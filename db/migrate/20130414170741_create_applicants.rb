class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.string :current_role
      t.boolean :job_seeker
      t.text :content

      t.timestamps
    end
  end
end
