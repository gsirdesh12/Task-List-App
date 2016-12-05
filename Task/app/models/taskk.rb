# jarp: one of the amazing things about rails is you can have typos and the scaffolder will still work.
#       you will probably want to redo this model and fix the Taskk

class Taskk < ActiveRecord::Base
  belongs_to :task_list
  # added described scopes
  scope :completed, -> { where(is_completed_toggle: true).order(due_date: :desc) }
  scope :pending, -> { where(is_completed_toggle: false).order(due_date: :asc) }

  # validate that required attributes are present and of specified type

  # jarp: you can put all the presence rules in a single line
    validates :title, presence: true
    validates :priority, presence: true
    validates :priority, numericality: true
    validates :priority, inclusion: { in: 1..10, message: "\"%{value}\" of priority must be between 1 and 10" }

    # if you re using the hash rocket (=>) the key needs to be a symbol
    validates :due_date, :presence => true
    validates :task_list_id, :presence => true

  def to_s
    name
  end
end
