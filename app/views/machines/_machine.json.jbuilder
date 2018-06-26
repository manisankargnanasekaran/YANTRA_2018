json.extract! machine, :id, :machine_name, :machine_model, :machine_serial_no, :machine_type, :isactive, :deleted_at, :machine_ip, :unit, :device_id, :tenant_id, :created_at, :updated_at
json.url machine_url(machine, format: :json)
