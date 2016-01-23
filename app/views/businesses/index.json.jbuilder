json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :website, :leader_id
  json.url business_url(business, format: :json)
end
