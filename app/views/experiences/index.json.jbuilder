json.array!(@experiences) do |experience|
  json.extract! experience, :id, :work_type, :start_date, :end_date, :work_field_id, :user_id
  json.url experience_url(experience, format: :json)
end
