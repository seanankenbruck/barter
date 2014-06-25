class ContactUs < ActionMailer::Base
  default from: 'dacur7@gmail.com'

	def contact(message)
	    mail(subject: 'New contact us message from user',
	         to: 'dacur7@gmail.com')
	end

end
