json.extract! todo_task, :id, :description, :reminder, :dueby, :completed, :created_at, :updated_at
json.url todo_task_url(todo_task, format: :json)
