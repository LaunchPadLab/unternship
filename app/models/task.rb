class Task < ActiveRecord::Base
  
  #Attributes
  attr_accessible :contact_name, :deadline, :details, :email, :organization_description, :organization_name, :organization_url, :title,
              :file, :completed
  
  #Associations
  has_many :assignments
  
  #Validation
  validates :organization_name, :organization_url, :contact_name, :email, :organization_description, :title, :deadline, :details, presence: true
  
  #Scope
  scope :incomplete_first, order('completed DESC')
  
  #Uploader
  mount_uploader :file, FileUploader

  
  #Instance Methods
  def formatted_deadline
    deadline.present? ? deadline.strftime('%D') : nil
  end
  
  def assigned?
    assignments.where(accepted: true).length > 0
  end
  
  def not_assigned?
    !assigned?
  end
  
  def accepted_assignment
    assignments.where(accepted: true).first
  end
  
  def self.unassigned
    self.order('created_at DESC').keep_if { |task| task.not_assigned? }
  end
  
end
