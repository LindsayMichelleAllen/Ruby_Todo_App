class AddUseridToTodoTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :todo_tasks, :username, :string, null: false
  end
end
