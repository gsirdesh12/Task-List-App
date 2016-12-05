class TaskList < ActiveRecord::Base
  has_many :taskks

  # validations for Task List model
  # jarp: you can add all the presence rules on one line
  validates :name, :description, presence => true
  validates :name, uniqueness: true
  #validates :description, presence => true

  def to_s
    name
  end
end
