json.array!(@advertises) do |advertise|
  json.extract! advertise, :id, :picture, :user_id
  json.url advertise_url(advertise, format: :json)
end
