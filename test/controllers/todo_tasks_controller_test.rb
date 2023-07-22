require "test_helper"

class TodoTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_task = todo_tasks(:one)
  end

  test "should get index" do
    get todo_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_todo_task_url
    assert_response :success
  end

  test "should create todo_task" do
    assert_difference("TodoTask.count") do
      post todo_tasks_url, params: { todo_task: { completed: @todo_task.completed, description: @todo_task.description, dueby: @todo_task.dueby, reminder: @todo_task.reminder } }
    end

    assert_redirected_to todo_task_url(TodoTask.last)
  end

  test "should show todo_task" do
    get todo_task_url(@todo_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo_task_url(@todo_task)
    assert_response :success
  end

  test "should update todo_task" do
    patch todo_task_url(@todo_task), params: { todo_task: { completed: @todo_task.completed, description: @todo_task.description, dueby: @todo_task.dueby, reminder: @todo_task.reminder } }
    assert_redirected_to todo_task_url(@todo_task)
  end

  test "should destroy todo_task" do
    assert_difference("TodoTask.count", -1) do
      delete todo_task_url(@todo_task)
    end

    assert_redirected_to todo_tasks_url
  end
end
