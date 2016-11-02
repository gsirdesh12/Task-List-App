class CreateTaskks < ActiveRecord::Migration
  def change
    create_table :taskks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.date :due_date
      t.boolean :is_completed_toggle
      t.belongs_to :task_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
