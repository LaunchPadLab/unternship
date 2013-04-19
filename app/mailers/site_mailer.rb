class SiteMailer < ActionMailer::Base
  default :from => ENV['username'], cc: ENV['username']
 
  def new_task(task)
    @task = task
    
    mail(:to => @task.email, :subject => "Unternship: Thanks for submitting your Task!")
  end
  
  def new_applicant(applicant)
    @applicant = applicant
    
    mail(:to => @applicant.email, :subject => "Unternship: Thanks for submitting your Application!")
  end
  
end