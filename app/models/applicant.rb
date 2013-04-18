class Applicant < ActiveRecord::Base
  
  attr_accessible :content, :current_role, :email, :job_seeker, :name, :task_id
  attr_accessor :task_id
  
  #Associations
  has_many :assignments
    
end
