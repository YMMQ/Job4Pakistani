json.array!(@educations) do |education|
  json.extract! education, :id, :division, :obtained_marks, :pass_year, :user_id, :degre_id, :institute_id
  json.url education_url(education, format: :json)
end
