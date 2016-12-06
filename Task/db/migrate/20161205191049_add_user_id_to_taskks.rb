class AddUserIdToTaskks < ActiveRecord::Migration
  def change
    add_column :taskks, :user_id, :integer
  end
end
