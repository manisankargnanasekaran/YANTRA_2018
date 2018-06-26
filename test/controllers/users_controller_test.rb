require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { deleted_at: @user.deleted_at, email_id: @user.email_id, first_name: @user.first_name, isactive: @user.isactive, last_name: @user.last_name, password_digest: @user.password_digest, phone_number: @user.phone_number, player_id: @user.player_id, remarks: @user.remarks, role_id: @user.role_id, user_type_id: @user.user_type_id } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { deleted_at: @user.deleted_at, email_id: @user.email_id, first_name: @user.first_name, isactive: @user.isactive, last_name: @user.last_name, password_digest: @user.password_digest, phone_number: @user.phone_number, player_id: @user.player_id, remarks: @user.remarks, role_id: @user.role_id, user_type_id: @user.user_type_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
