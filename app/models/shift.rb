class Shift < ApplicationRecord
  acts_as_paranoid
  #belongs_to :tenant, -> { with_deleted }
  has_many :shifttransactions

  def self.current_shift(tenant_id)
  shift = []
  tenant = Tenant.find(tenant_id)
	if tenant.shift.present?    
	  if tenant.shift.shifttransactions.present?
		tenant.shift.shifttransactions.map do |ll|
		  if ll.shift_start_time.include?("PM") && ll.shift_end_time.include?("AM")
		    if Time.now.strftime("%p") == "AM"
		      if ll.shift_start_time.to_time < Time.now + 1.day  && ll.shift_end_time.to_time > Time.now
		        shift = ll
		      end 
		    else
		      if ll.shift_start_time.to_time < Time.now && ll.shift_end_time.to_time + 1.day > Time.now
		        shift = ll
		      end 
		    end
		    else
		      if ll.shift_start_time.to_time < Time.now && ll.shift_end_time.to_time > Time.now
		        shift = ll
		      end
		    end
		  end
		   return shift
	  else
	  	return "No Shifttransactions at Time"
	  end
	else
		return "No Shift"
	end
  end

  def self.check_shift_time
  	@data = []
  	date = "2018-07-20"
  	tenants = Tenant.where(isactive: true)
  	tenants.each do |tenant|
  	  shifts = tenant.shift.shifttransactions
      shifts.each do |shift|
      	if shift.shift_start_time.include?("PM") && shift.shift_end_time.include?("AM")
          if Time.now.strftime("%p") == "AM"
            date = (date.to_date - 1.day).strftime("%Y-%m-%d")
          end 
          start_time = (date+" "+shift.shift_start_time).to_time
          end_time = (date+" "+shift.shift_end_time).to_time+1.day                             
        elsif shift.shift_start_time.include?("AM") && shift.shift_end_time.include?("AM")
          if shift.shift.shift_start_time > Time.now           
          if Time.now.strftime("%p") == "AM"
            date = (date.to_day - 1.day).strftime("%Y-%m-%d")
          end
          start_time = (date+" "+shift.shift_start_time).to_time+1.day
          end_time = (date+" "+shift.shift_end_time).to_time+1.day
        else              
          start_time = (date+" "+shift.shift_start_time).to_time
          end_time = (date+" "+shift.shift_end_time).to_time        
        end
        @data << {
        	     tenant: tenant.tenant_name,
        	     shift: shift.shift_no,
        	     sh_time: shift.shift_start_time+'-'+shift.shift_end_time,
        	     time: start_time.to_time.strftime("%Y-%m-%d || %H:%M:%S")+'------'+end_time.to_time.strftime("%Y-%m-%d || %H:%M:%S")
                  }
      end
  	end
  	ShiftCheckingMailer.check_time(@data).deliver_now
  end

end
end


