json.array!(@installations) do |installation|
  json.extract! installation, :id, :name, :state
  json.url installation_url(installation, format: :json)
end
