json.extract! billing, :id, :amount, :type, :due_date, :filled, :tenant_id, :created_at, :updated_at
json.url billing_url(billing, format: :json)
