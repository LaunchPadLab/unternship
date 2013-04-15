class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :organization_name
      t.string :organization_url
      t.string :contact_name
      t.string :email
      t.text :organization_description
      t.string :title
      t.datetime :deadline
      t.text :details
      t.string :wufoo_link

      t.timestamps
    end
  end
end
