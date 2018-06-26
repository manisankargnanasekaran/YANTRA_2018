json.extract! user, :id, :first_name, :last_name, :email_id, :password_digest, :phone_number, :player_id, :remarks, :isactive, :deleted_at, :role_id, :user_type_id, :created_at, :updated_at
json.url user_url(user, format: :json)
