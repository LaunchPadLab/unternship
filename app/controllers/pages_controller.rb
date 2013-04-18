class PagesController < ApplicationController
  
  http_basic_authenticate_with :name => "admin", :password => "unternship", :only => :admin
  
  def home
    
  end
  
  def admin
    @tasks = Task.includes(:assignments)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end
  
  
  
end