class Taskk < ActiveRecord::Base
  belongs_to :task_list

  def to_s
    name
  end
end
