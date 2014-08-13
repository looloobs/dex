json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :phone, :email, :category_id, :installation_id
  json.url contact_url(contact, format: :json)
end
