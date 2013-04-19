class RemoveWufooLinkFromTasks < ActiveRecord::Migration

  def change
    remove_column :tasks, :wufoo_link
  end

end
