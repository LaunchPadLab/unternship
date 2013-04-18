class AddAcceptedToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :accepted, :boolean
  end
end
