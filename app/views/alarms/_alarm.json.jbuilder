json.extract! alarm, :id, :alarm_type, :alarm_number, :alarm_message, :emergency, :deleted_at, :machine_id, :created_at, :updated_at
json.url alarm_url(alarm, format: :json)
