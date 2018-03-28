require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_login_path
    assert_response :success
  end

  test "should get create" do
    post sessions_login_path
    assert_response :success
  end

  test "should get destroy" do
    get sessions_logout_path
    assert_response :success
  end

end
