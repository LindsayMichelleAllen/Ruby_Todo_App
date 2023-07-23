require "test_helper"

class TodoTaskTest < ActiveSupport::TestCase
  
  test "task cannot be created without description" do
    task = TodoTask.new
    task.dueby = Date.today + 2
    task.reminder = Date.today + 1

    assert_not task.save
  end
  
  test "dueby date must be in the future" do
    #setup
    task = TodoTask.new
    task.description = "test"
    task.dueby = Date.today - 1
    
    assert_not task.save
  end
  
  test "reminder must be in the future" do
    task = TodoTask.new
    task.description = "test"
    task.reminder = Date.today - 1
    
    assert_not task.save
  end
  
  test "reminder must be before the dueby date" do
    task = TodoTask.new
    task.description = "test"
    task.reminder = Date.today + 5
    task.dueby = Date.today + 4
    
    assert_not task.save
  end
end
