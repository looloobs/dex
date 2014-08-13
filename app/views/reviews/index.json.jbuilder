json.array!(@reviews) do |review|
  json.extract! review, :id, :stars, :comments, :contact_id
  json.url review_url(review, format: :json)
end
