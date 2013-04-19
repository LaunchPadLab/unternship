class AssignmentsController < ApplicationController
  
  def assignment_update
    
    @assignment = Assignment.find(params[:assignment][:id])
    
    respond_to do |format|
      if @assignment.update_attributes(accepted: true)
        format.html { redirect_to admin_url }
      end
    end
    
  end
  
  def show
    @assignment = Assignment.find(params[:id], include: [:task, :applicant])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end
  
  def update
    @assignment = Assignment.find(params[:id])

    respond_to do |format|
      if @assignment.update_attributes(params[:assignment])
        format.html { redirect_to admin_url }
        format.json { head :no_content }
      end
    end
  end
  
end