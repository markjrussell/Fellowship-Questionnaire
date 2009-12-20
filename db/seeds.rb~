# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
#####################################   Questions   #####################################################################
questions = ["The performance of team members is impaired by excessive workload."]
questions << "Team members always have enough time to complete work tasks safely."
questions << "The level of staffing in the practice is sufficient to manage the workload safely."
questions << "When pressure builds up, team members are expected to work faster even if it means taking shortcuts."
questions << "Team members feel free to question the decisions of those with more authority."
questions << "Team members are comfortable in expressing concerns to the practice leadership about the way things are done in the practice."
questions << "There is open communication between team members across all levels in the practice."
questions << "Team members are kept up to date about practice developments."
questions << "The practice leadership communicates its vision for the development of the practice."
questions << "The hierarchy in the practice is a barrier to effective working."
questions << "Highlighting a significant event will likely result in negative repercussions for the person raising it."
questions << "The practice leadership does not deal effectively with problem team members."
questions << "When team members suggest ways to improve how things are done, the practice leadership does not take this seriously."
questions << "There is a low level of trust between practice team members."
questions << "Practice team members frequently disregard rules, protocols and procedures."
questions << "Team members treat each other with respect."
questions << "Team members always support one another."
questions << "Disagreements within the practice team are resolved appropriately."
questions << "Team members work well together at all levels within the practice."
questions << "The practice is a good place to work."
questions << "Team members are generally satisfied with their jobs."
questions << "The need to work well as a team is promoted by the practice leadership."
questions << "All team members are encouraged to highlight significant events that happen in the practice."
questions << "Practice procedures help to prevent significant events from happening."
questions << "Decision-making relating to the development of practice protocols uses input from all team members."
questions << "The practice takes the time to formally assess risks (e.g. to patients, to team members and to the practice)."
questions << "All team members have the opportunity to participate in the analysis of significant events."
questions << "The quality and safety of patient care in the practice is taken seriously."
questions << "The practice supports the continuing educational development of all team members."
questions << "The practice encourages learning from the ideas and concerns of team members at all levels."

questions.each do |t|  
       QuestionList.find_or_create_by_question t  
end  




#####################################   Roles   #####################################################################
roles = ["Practice manager"]
roles << "Practice manager"
roles << "Medical Doctor"
roles << "Practice nurse"
roles << "Health visitor"
roles << "Administration/Reception"
roles << "Phlebotomist"
roles << "Pharmacist"
roles << "Allied Healthcare Professional"
roles << "Other"

roles.each do |t|  
       Role.find_or_create_by_name t  
end 

#####################################   Service Lengths   #####################################################################

sl =["< 1 year"]
sl << "1 – 5 years"
sl << "5 – 10 years"
sl << "10 – 20 years"
sl << "> 20 years"

roles.each do |t|  
       ServiceLength.find_or_create_by_name t  
end  

#####################################   gender   #####################################################################

genders =["Male"]
genders << "Female"

genders.each do |t|  
       Gender.find_or_create_by_name t  
end  

#####################################   Work Patterns   #####################################################################

patterns =["Full Time"]
patterns << "Part Time"
patterns << "Locum"

patterns.each do |t|  
       WorkPattern.find_or_create_by_name t  
end  
