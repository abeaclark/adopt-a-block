json.array!(@blocks) do |block|
  json.extract! block, :id, :block_num, :name
  json.url block_url(block, format: :json)
end
