require "test_helper"

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get task_test_url
    assert_response :success
  end
end
