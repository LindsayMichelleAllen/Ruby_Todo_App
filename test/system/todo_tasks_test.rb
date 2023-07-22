require "application_system_test_case"

class TodoTasksTest < ApplicationSystemTestCase
  setup do
    @todo_task = todo_tasks(:one)
  end

  test "visiting the index" do
    visit todo_tasks_url
    assert_selector "h1", text: "Todo tasks"
  end

  test "should create todo task" do
    visit todo_tasks_url
    click_on "New todo task"

    check "Completed" if @todo_task.completed
    fill_in "Description", with: @todo_task.description
    fill_in "Dueby", with: @todo_task.dueby
    fill_in "Reminder", with: @todo_task.reminder
    click_on "Create Todo task"

    assert_text "Todo task was successfully created"
    click_on "Back"
  end

  test "should update Todo task" do
    visit todo_task_url(@todo_task)
    click_on "Edit this todo task", match: :first

    check "Completed" if @todo_task.completed
    fill_in "Description", with: @todo_task.description
    fill_in "Dueby", with: @todo_task.dueby
    fill_in "Reminder", with: @todo_task.reminder
    click_on "Update Todo task"

    assert_text "Todo task was successfully updated"
    click_on "Back"
  end

  test "should destroy Todo task" do
    visit todo_task_url(@todo_task)
    click_on "Destroy this todo task", match: :first

    assert_text "Todo task was successfully destroyed"
  end
end
