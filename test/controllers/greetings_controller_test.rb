require "test_helper"

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get Questions" do
    get greetings_Questions_url
    assert_response :success
  end
end
