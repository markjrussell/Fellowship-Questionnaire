class Person < ActiveRecord::Base

	#validate presence of all columns, except id
	#validates_presence_of(self.class.column_names - ["id"])

	
	def email
	end

	def email=(user_email)
		self.userhash=Digest::SHA1.hexdigest("mark2009safety"+user_email)
	end
end
