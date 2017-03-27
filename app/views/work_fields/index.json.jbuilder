json.array!(@work_fields) do |work_field|
  json.extract! work_field, :id, :field_name
  json.url work_field_url(work_field, format: :json)
end
