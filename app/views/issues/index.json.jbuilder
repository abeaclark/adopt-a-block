json.array!(@issues) do |issue|
  json.extract! issue, :id, :user_id, :title, :body, :status
  json.url issue_url(issue, format: :json)
end
