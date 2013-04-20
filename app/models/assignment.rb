class Assignment < ActiveRecord::Base
  
  #Attributes
  attr_accessible :applicant_id, :rating, :review, :task_id, :accepted, :completed
  attr_accessor :completed
  
  #Associations
  belongs_to :applicant
  belongs_to :task
  
  #Callback
  after_save :mark_complete_associated_task
  
  #Instance Method
  
  def email
    applicant.email
  end
  
  def mark_complete_associated_task
    if self.completed
      self.task.update_attribute(:completed, true)
    end
  end
  
  def id_and_email
    "#{id} - #{applicant.email}"
  end
  
end
