json.extract! taskk, :id, :title, :description, :priority, :due_date, :is_completed_toggle, :task_list_id, :created_at, :updated_at
json.url taskk_url(taskk, format: :json)