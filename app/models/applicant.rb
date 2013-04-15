class Applicant < ActiveRecord::Base
  attr_accessible :content, :current_role, :email, :job_seeker, :name
end
