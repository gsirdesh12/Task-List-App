# jarp: one of the amazing things about rails is you can have typos and the scaffolder will still work.
#       you will probably want to redo this model and fix the Taskk

class Taskk < ActiveRecord::Base
  belongs_to :task_list

  def to_s
    name
  end
end
