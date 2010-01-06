class PersonMailer < ActionMailer::Base
  
	def welcome_email(person)  
		recipients 	person.email
		from 				"mark.russell@nes.scot.nhs.uk"  
		subject 		"NES Fellowships"  
		sent_on 		Time.now 
		body 				:person => person
	end

end


#		recipients 	user.email 
