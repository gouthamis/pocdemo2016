json.array!(@contents) do |content|
  json.extract! content, :id, :name, :designation, :doj
  json.url content_url(content, format: :json)
end
