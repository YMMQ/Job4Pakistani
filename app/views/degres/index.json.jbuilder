json.array!(@degres) do |degre|
  json.extract! degre, :id, :name, :drege_type
  json.url degre_url(degre, format: :json)
end
