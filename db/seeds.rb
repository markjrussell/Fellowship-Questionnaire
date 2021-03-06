# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
#####################################   Questions   #####################################################################
questions = ["Why did you apply for the fellowship?"]
questions << "What do you feel you got out of the fellowship?"
questions << "How did the fellowship compare with your expectations?"
questions << "What did you feel the limitations of the fellowship were?"
questions << "Please give a brief summary of your career since completing the fellowship"
questions << "How do you feel that the fellowship has influenced the course of your career?"
questions << "What long term career aspirations did you have before you started the fellowship, and how do they compare with your aspirations now?"

questions.each do |t|  
       QuestionList.find_or_create_by_question t  
end  

