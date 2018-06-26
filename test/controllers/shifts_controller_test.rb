require 'test_helper'

class ShiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift = shifts(:one)
  end

  test "should get index" do
    get shifts_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_url
    assert_response :success
  end

  test "should create shift" do
    assert_difference('Shift.count') do
      post shifts_url, params: { shift: { day_start_time: @shift.day_start_time, day_start_time_dummy: @shift.day_start_time_dummy, deleted_at: @shift.deleted_at, isactive: @shift.isactive, no_of_shift: @shift.no_of_shift, tenant_id: @shift.tenant_id, working_time: @shift.working_time, working_time_dummy: @shift.working_time_dummy } }
    end

    assert_redirected_to shift_url(Shift.last)
  end

  test "should show shift" do
    get shift_url(@shift)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_url(@shift)
    assert_response :success
  end

  test "should update shift" do
    patch shift_url(@shift), params: { shift: { day_start_time: @shift.day_start_time, day_start_time_dummy: @shift.day_start_time_dummy, deleted_at: @shift.deleted_at, isactive: @shift.isactive, no_of_shift: @shift.no_of_shift, tenant_id: @shift.tenant_id, working_time: @shift.working_time, working_time_dummy: @shift.working_time_dummy } }
    assert_redirected_to shift_url(@shift)
  end

  test "should destroy shift" do
    assert_difference('Shift.count', -1) do
      delete shift_url(@shift)
    end

    assert_redirected_to shifts_url
  end
end
