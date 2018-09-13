json.extract! tenant, :id, :first_name, :last_name, :entry, :leaving, :parking, :room_no, :admin_id, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
