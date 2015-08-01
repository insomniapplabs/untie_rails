class ProspectMailer < ActionMailer::Base

	def basic_divorce_email(prospect)
		@prospect = prospect
		mail(to: "aaronjohnsonis@gmail.com", subject: "Basic Divorce Prospect", from: @prospect.email)
	end

	def divorce_property_email(prospect)
		@prospect = prospect
		mail(to: "aaronjohnsonis@gmail.com", subject: "Divorce with Property Prospect", from: @prospect.email)
	end

	def divorce_children_email(prospect)
		@prospect = prospect
		mail(to: "aaronjohnsonis@gmail.com", subject: "Divorce with Children Prospect", from: @prospect.email)
	end
	
end
