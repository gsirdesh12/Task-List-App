class TaskList < ActiveRecord::Base
  has_many :taskks

  def to_s
    name
  end
end
