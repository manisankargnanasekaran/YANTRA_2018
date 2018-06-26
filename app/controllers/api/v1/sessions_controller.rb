module Api
  module V1
	class SessionsController < ApplicationController
    skip_before_action :authenticate_request, only: %i[login register]
	  def register
	  	@user = Tenant.new(tenant_params)
	      if @user.save
	        response = { message: 'User created successfully'}
	        render json: response, status: :created 
	      else
	        render json: @user.errors, status: :bad
	      end 
	  end

	  def login
	  	authenticate params[:email], params[:password]
	  end

	  def test
	  	render json: {
          message: 'You have passed authentication and authorization test',
          current_user: current_user,
          current_tenant: current_tenant
        }
	  end

    def start_end_time
      unless current_shift == "No Shifttransactions at Time"
        #shift = Shift.current_shift(current_tenant.id)
        now = Time.now + 8.hours
        shift = Shifttransaction.find(5)
        date=Date.today.strftime("%Y-%m-%d")
        if shift.shift_start_time.include?("PM") && shift.shift_end_time.include?("AM")
            if Time.now.strftime("%p") == "AM"
               date = (Date.today - 1).strftime("%Y-%m-%d")
            end 
               start_time = (date+" "+shift.shift_start_time).to_time
               end_time = (date+" "+shift.shift_end_time).to_time+1.day        
        elsif shift.shift_start_time.include?("AM") && shift.shift_end_time.include?("AM")
          byebug
         # shift.shift.day_start_time.to_time+1.day > now
            if Time.now.strftime("%p") == "AM"
            #if shift.shift.day_start_time.to_time > Time.now
               date = (Date.today - 1).strftime("%Y-%m-%d")
            end 
               start_time = (date+" "+shift.shift_start_time).to_time+1.day
               end_time = (date+" "+shift.shift_end_time).to_time+1.day
        else
              start_time = (date+" "+shift.shift_start_time).to_time
              end_time = (date+" "+shift.shift_end_time).to_time        
        end
        
        render json: {start_time: start_time, end_time: end_time}
      else
        render json: "test" 
      end
    end

	  def logout
	  end

	  private

	  #def user_params
     #  params.require(:user).permit(:first_name, :last_name, :email, :password, :phone_number, :player_id, :remarks, :isactive, :deleted_at, :role_id, :user_type_id, tenant_attributes: [:id, :tenant_name, :address_line1, :address_line2, :city, :state, :country, :pincode, :active_by, :isactive, :deleted_at])
    #end

    def tenant_params
       params.require(:tenant).permit(:tenant_name, :address_line1, :address_line2, :city, :state, :country, :pincode, :active_by, :isactive, :deleted_at, users_attributes:[:id, :first_name, :last_name, :email, :password, :phone_number, :player_id, :remarks, :isactive, :deleted_at, :role_id, :user_type_id])
    end

      def authenticate(email, password)
        command = AuthenticateUser.call(email, password)
        if command.success?
          user_id = JsonWebToken.decode(command.result)["id"]
          user = User.find(user_id)
          user.update(player_id: params[:player_id]) if params[:player_id].present?
          render json: {
        	access_token: command.result,
        	message: 'Login Successful',
        	#usertype: user.user_type_id,
        	#user: user
          }
        else
          render json: { error: command.errors }, status: :unauthorized
        end
      end
	end
  end
end