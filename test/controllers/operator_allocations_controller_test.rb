require 'test_helper'

class OperatorAllocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operator_allocation = operator_allocations(:one)
  end

  test "should get index" do
    get operator_allocations_url
    assert_response :success
  end

  test "should get new" do
    get new_operator_allocation_url
    assert_response :success
  end

  test "should create operator_allocation" do
    assert_difference('OperatorAllocation.count') do
      post operator_allocations_url, params: { operator_allocation: { description: @operator_allocation.description, from_date: @operator_allocation.from_date, machine_id: @operator_allocation.machine_id, operator_id: @operator_allocation.operator_id, shifttransaction_id: @operator_allocation.shifttransaction_id, tenant_id: @operator_allocation.tenant_id, to_date: @operator_allocation.to_date } }
    end

    assert_redirected_to operator_allocation_url(OperatorAllocation.last)
  end

  test "should show operator_allocation" do
    get operator_allocation_url(@operator_allocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_operator_allocation_url(@operator_allocation)
    assert_response :success
  end

  test "should update operator_allocation" do
    patch operator_allocation_url(@operator_allocation), params: { operator_allocation: { description: @operator_allocation.description, from_date: @operator_allocation.from_date, machine_id: @operator_allocation.machine_id, operator_id: @operator_allocation.operator_id, shifttransaction_id: @operator_allocation.shifttransaction_id, tenant_id: @operator_allocation.tenant_id, to_date: @operator_allocation.to_date } }
    assert_redirected_to operator_allocation_url(@operator_allocation)
  end

  test "should destroy operator_allocation" do
    assert_difference('OperatorAllocation.count', -1) do
      delete operator_allocation_url(@operator_allocation)
    end

    assert_redirected_to operator_allocations_url
  end
end
