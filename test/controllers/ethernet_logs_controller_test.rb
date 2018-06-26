require 'test_helper'

class EthernetLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ethernet_log = ethernet_logs(:one)
  end

  test "should get index" do
    get ethernet_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_ethernet_log_url
    assert_response :success
  end

  test "should create ethernet_log" do
    assert_difference('EthernetLog.count') do
      post ethernet_logs_url, params: { ethernet_log: { date: @ethernet_log.date, machine_id: @ethernet_log.machine_id, status: @ethernet_log.status, tenant_id: @ethernet_log.tenant_id } }
    end

    assert_redirected_to ethernet_log_url(EthernetLog.last)
  end

  test "should show ethernet_log" do
    get ethernet_log_url(@ethernet_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_ethernet_log_url(@ethernet_log)
    assert_response :success
  end

  test "should update ethernet_log" do
    patch ethernet_log_url(@ethernet_log), params: { ethernet_log: { date: @ethernet_log.date, machine_id: @ethernet_log.machine_id, status: @ethernet_log.status, tenant_id: @ethernet_log.tenant_id } }
    assert_redirected_to ethernet_log_url(@ethernet_log)
  end

  test "should destroy ethernet_log" do
    assert_difference('EthernetLog.count', -1) do
      delete ethernet_log_url(@ethernet_log)
    end

    assert_redirected_to ethernet_logs_url
  end
end
