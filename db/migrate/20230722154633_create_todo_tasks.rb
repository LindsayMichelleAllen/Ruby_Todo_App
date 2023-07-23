class CreateTodoTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_tasks do |t|
      t.string :description
      t.datetime :reminder
      t.datetime :dueby
      t.boolean :completed

      t.timestamps
    end
  end
end
