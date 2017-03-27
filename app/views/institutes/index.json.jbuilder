json.array!(@institutes) do |institute|
  json.extract! institute, :id, :name, :city_id
  json.url institute_url(institute, format: :json)
end
