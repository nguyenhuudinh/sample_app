require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_login_url
    assert_response :success
  end

  test "should get create" do
    post sessions_login_url
    assert_response :success
  end

  test "should get destroy" do
    get sessions_logout_url
    assert_response :success
  end

end
