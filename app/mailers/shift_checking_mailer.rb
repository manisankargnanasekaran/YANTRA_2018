class ShiftCheckingMailer < ApplicationMailer
	def check_time(data)
	@timing = data
    mail(to: 'manisankar.gnanasekaran@adcltech.com', subject: "Tenant's shift timming" )
	end
end
