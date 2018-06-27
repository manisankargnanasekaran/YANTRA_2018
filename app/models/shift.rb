class Shift < ApplicationRecord
  acts_as_paranoid
  belongs_to :tenant
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
end



