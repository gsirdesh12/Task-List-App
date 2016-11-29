class AddIsPrivateToTaskList < ActiveRecord::Migration
  def change
    add_column :task_lists, :is_private, :boolean
  end
end
