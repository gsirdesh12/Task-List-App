class TaskList < ActiveRecord::Base
  has_many :taskks

  # validations for Task List model
  validates :name, presence => true
  validates :name, uniqueness: true
  validates :description, presence => true

  def to_s
    name
  end
end
