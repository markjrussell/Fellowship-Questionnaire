class PersonMailer < ActionMailer::Base
  
	def welcome_email(person)  
		recipients 	person.email
		from 				"safequest@itforgp.com"  
		subject 		"Your practice manager requests that you fill in this Safety Questionnaire"  
		sent_on 		Time.now 
		body 				:person => person
	end

end


#		recipients 	user.email 
