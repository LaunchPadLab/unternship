class Task < ActiveRecord::Base
  attr_accessible :contact_name, :deadline, :details, :email, :organization_description, :organization_name, :organization_url, :title, :wufoo_link
end
