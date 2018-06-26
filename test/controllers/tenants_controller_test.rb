require 'test_helper'

class TenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant = tenants(:one)
  end

  test "should get index" do
    get tenants_url
    assert_response :success
  end

  test "should get new" do
    get new_tenant_url
    assert_response :success
  end

  test "should create tenant" do
    assert_difference('Tenant.count') do
      post tenants_url, params: { tenant: { active_by: @tenant.active_by, address_line1: @tenant.address_line1, address_line2: @tenant.address_line2, city: @tenant.city, country: @tenant.country, deleted_at: @tenant.deleted_at, isactive: @tenant.isactive, pincode: @tenant.pincode, state: @tenant.state, tenant_name: @tenant.tenant_name } }
    end

    assert_redirected_to tenant_url(Tenant.last)
  end

  test "should show tenant" do
    get tenant_url(@tenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_tenant_url(@tenant)
    assert_response :success
  end

  test "should update tenant" do
    patch tenant_url(@tenant), params: { tenant: { active_by: @tenant.active_by, address_line1: @tenant.address_line1, address_line2: @tenant.address_line2, city: @tenant.city, country: @tenant.country, deleted_at: @tenant.deleted_at, isactive: @tenant.isactive, pincode: @tenant.pincode, state: @tenant.state, tenant_name: @tenant.tenant_name } }
    assert_redirected_to tenant_url(@tenant)
  end

  test "should destroy tenant" do
    assert_difference('Tenant.count', -1) do
      delete tenant_url(@tenant)
    end

    assert_redirected_to tenants_url
  end
end
