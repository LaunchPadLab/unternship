class Assignment < ActiveRecord::Base
  
  #Attributes
  attr_accessible :applicant_id, :rating, :review, :task_id, :accepted
  
  #Associations
  belongs_to :applicant
  belongs_to :task
  
  #Instance Method
  
  def email
    applicant.email
  end
  
end
