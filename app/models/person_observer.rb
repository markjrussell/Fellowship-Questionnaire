class PersonObserver < ActiveRecord::Observer 
	def after_create(person)  
		PersonMailer.deliver_welcome_email(person)  
	end 
end
