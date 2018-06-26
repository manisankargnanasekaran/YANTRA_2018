require 'test_helper'

class ShifttransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shifttransaction = shifttransactions(:one)
  end

  test "should get index" do
    get shifttransactions_url
    assert_response :success
  end

  test "should get new" do
    get new_shifttransaction_url
    assert_response :success
  end

  test "should create shifttransaction" do
    assert_difference('Shifttransaction.count') do
      post shifttransactions_url, params: { shifttransaction: { actual_working_hours: @shifttransaction.actual_working_hours, actual_working_hours_dummy: @shifttransaction.actual_working_hours_dummy, actual_working_without_break: @shifttransaction.actual_working_without_break, deleted_at: @shifttransaction.deleted_at, isactive: @shifttransaction.isactive, shift_end_time: @shifttransaction.shift_end_time, shift_end_time_dummy: @shifttransaction.shift_end_time_dummy, shift_id: @shifttransaction.shift_id, shift_no: @shifttransaction.shift_no, shift_start_time: @shifttransaction.shift_start_time, shift_start_time_dummy: @shifttransaction.shift_start_time_dummy } }
    end

    assert_redirected_to shifttransaction_url(Shifttransaction.last)
  end

  test "should show shifttransaction" do
    get shifttransaction_url(@shifttransaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_shifttransaction_url(@shifttransaction)
    assert_response :success
  end

  test "should update shifttransaction" do
    patch shifttransaction_url(@shifttransaction), params: { shifttransaction: { actual_working_hours: @shifttransaction.actual_working_hours, actual_working_hours_dummy: @shifttransaction.actual_working_hours_dummy, actual_working_without_break: @shifttransaction.actual_working_without_break, deleted_at: @shifttransaction.deleted_at, isactive: @shifttransaction.isactive, shift_end_time: @shifttransaction.shift_end_time, shift_end_time_dummy: @shifttransaction.shift_end_time_dummy, shift_id: @shifttransaction.shift_id, shift_no: @shifttransaction.shift_no, shift_start_time: @shifttransaction.shift_start_time, shift_start_time_dummy: @shifttransaction.shift_start_time_dummy } }
    assert_redirected_to shifttransaction_url(@shifttransaction)
  end

  test "should destroy shifttransaction" do
    assert_difference('Shifttransaction.count', -1) do
      delete shifttransaction_url(@shifttransaction)
    end

    assert_redirected_to shifttransactions_url
  end
end
