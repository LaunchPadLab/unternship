class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :task_id
      t.integer :applicant_id
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
