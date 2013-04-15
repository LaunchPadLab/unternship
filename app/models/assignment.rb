class Assignment < ActiveRecord::Base
  attr_accessible :applicant_id, :rating, :review, :task_id
end
