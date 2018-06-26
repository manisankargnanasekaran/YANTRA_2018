require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get sessions_register_url
    assert_response :success
  end

  test "should get login" do
    get sessions_login_url
    assert_response :success
  end

  test "should get test" do
    get sessions_test_url
    assert_response :success
  end

  test "should get logout" do
    get sessions_logout_url
    assert_response :success
  end

end
