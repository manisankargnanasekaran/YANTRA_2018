module Api
  module V1    
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :edit, :update, :destroy]
      skip_before_action :authenticate_request, only: %i[create]

      # GET /users
      # GET /users.json
      def index
        #@users = User.all
        @users = User.where(tenant_id: current_tenant.id)
          render json: {
            message: 'Your All Users',
            user: @users
          }
      end

      # GET /users/1
      # GET /users/1.json
      def show
      end

      # GET /users/new
      def new
        @user = User.new
      end

      # GET /users/1/edit
      def edit
      end

      # POST /users
      # POST /users.json'User was successfully created.'
      def create
        @user = User.new(user_params)
        @user.tenant_id = current_tenant.id
          if @user.save
            render json: {
              message: 'User was successfully created.',
              user: @user
            }
          else
            render json: {message: 'User Not Created'}
          end
      end

      # PATCH/PUT /users/1
      # PATCH/PUT /users/1.json
      def update
        if @user.update(user_params)
          render json: {
            message: 'User was successfully Updated.',
            user: @user
          }
        else
          render json: {message: 'User Not Updated'}
        end
        
      end

      # DELETE /users/1
      # DELETE /users/1.json
      def destroy
        @user.destroy
        render json: {message: 'User was Deleted'}
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          @user = User.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def user_params
          params.require(:user).permit(:first_name, :last_name, :email, :password, :phone_number, :player_id, :remarks, :isactive, :deleted_at, :role_id, :user_type_id)
        end
    end
  end
end