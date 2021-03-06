class Taskk < ActiveRecord::Base
  belongs_to :task_list
  belongs_to :user

  # added described scopes
  scope :completed, -> { where(is_completed_toggle: true) }
  scope :pending, -> { where(is_completed_toggle: false) }

  # validate that required attributes are present and of specified type
  validates :title, presence => true
  validates :priority, presence => true
  validates :priority, numericality: true
  validates :priority, inclusion: { in: 1..10, message: "\"%{value}\" of priority must be between 1 and 10" }
  validates :due_date, presence => true
  validates :task_list_id, presence => true

  def to_s
    name
  end
end
