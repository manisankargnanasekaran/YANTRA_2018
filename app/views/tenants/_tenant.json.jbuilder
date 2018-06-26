json.extract! tenant, :id, :tenant_name, :address_line1, :address_line2, :city, :state, :country, :pincode, :active_by, :isactive, :deleted_at, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
