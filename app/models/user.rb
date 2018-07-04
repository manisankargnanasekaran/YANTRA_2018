class User < ApplicationRecord
  acts_as_paranoid
  belongs_to :role, -> { with_deleted }
  belongs_to :user_type, -> { with_deleted }
  belongs_to :tenant#, -> { with_deleted }
  has_secure_password



  def self.check_start_end_time
  	date="2018-06-29"
    tenant = Tenant.all.each do |tenant|
	    #shift = Shifttransaction.find(22)
	    shift = Shift.current_shift(tenant.id)
	    if shift.shift_start_time.include?("PM") && shift.shift_end_time.include?("AM")
	      if Time.now.strftime("%p") == "AM"
	        date = (Date.today - 1).strftime("%Y-%m-%d")
	      end 
	      start_time = (date+" "+shift.shift_start_time).to_time
	      end_time = (date+" "+shift.shift_end_time).to_time+1.day                             
	    elsif shift.shift_start_time.include?("AM") && shift.shift_end_time.include?("AM")           
	      if Time.now.strftime("%p") == "AM"
	        date = (Date.today - 1).strftime("%Y-%m-%d")
	      end
	      start_time = (date+" "+shift.shift_start_time).to_time+1.day
	      end_time = (date+" "+shift.shift_end_time).to_time+1.day
	    else              
	      start_time = (date+" "+shift.shift_start_time).to_time
	      end_time = (date+" "+shift.shift_end_time).to_time        
	    end
	  end
  end
end
