json.array!(@jobs) do |job|
  json.extract! job, :id, :description, :advertise_id, :work_field_id, :organization_id, :degre_id, :city_id
  json.url job_url(job, format: :json)
end
