require 'test_helper'

class ConnectionLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connection_log = connection_logs(:one)
  end

  test "should get index" do
    get connection_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_connection_log_url
    assert_response :success
  end

  test "should create connection_log" do
    assert_difference('ConnectionLog.count') do
      post connection_logs_url, params: { connection_log: { date: @connection_log.date, machine_id: @connection_log.machine_id, status: @connection_log.status, tenant_id: @connection_log.tenant_id } }
    end

    assert_redirected_to connection_log_url(ConnectionLog.last)
  end

  test "should show connection_log" do
    get connection_log_url(@connection_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_connection_log_url(@connection_log)
    assert_response :success
  end

  test "should update connection_log" do
    patch connection_log_url(@connection_log), params: { connection_log: { date: @connection_log.date, machine_id: @connection_log.machine_id, status: @connection_log.status, tenant_id: @connection_log.tenant_id } }
    assert_redirected_to connection_log_url(@connection_log)
  end

  test "should destroy connection_log" do
    assert_difference('ConnectionLog.count', -1) do
      delete connection_log_url(@connection_log)
    end

    assert_redirected_to connection_logs_url
  end
end
