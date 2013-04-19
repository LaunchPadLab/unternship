class Task < ActiveRecord::Base
  
  #Attributes
  attr_accessible :contact_name, :deadline, :details, :email, :organization_description, :organization_name, :organization_url, :title, :wufoo_link
  
  #Associations
  has_many :assignments
  
  #Validation
  validates :organization_name, :organization_url, :contact_name, :email, :organization_description, :title, :deadline, :details, presence: true
  
end
