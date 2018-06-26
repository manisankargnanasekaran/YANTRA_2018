json.extract! connection_log, :id, :date, :status, :tenant_id, :machine_id, :created_at, :updated_at
json.url connection_log_url(connection_log, format: :json)
