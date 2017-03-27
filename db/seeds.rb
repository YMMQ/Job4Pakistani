require 'csv'

puts "Importing provinces..."
CSV.foreach(Rails.root.join("provinces.csv"), headers: true) do |row|
  Province.create! do |province|
    province.id = row[0]
    province.name = row[1]
  end
end

puts "Importing cities..."
CSV.foreach(Rails.root.join("cities.csv"), headers: true) do |row|
  City.create! do |city|
    city.id = row[0]
    city.province_id = row[1]
    city.name = row[2]
  end
end


puts "Importing work_fields..."
CSV.foreach(Rails.root.join("work_fields.csv"), headers: true) do |row|
  WorkField.create! do |work_field|
    work_field.id = row[0]
    work_field.field_name = row[1]
  end
end


puts "Importing tdegrees..."
CSV.foreach(Rails.root.join("tdegrees.csv"), headers: true) do |row|
  Tdegree.create! do |tdegree|
    tdegree.id = row[0]
    tdegree.name = row[1]
  end
end

puts "Importing organizations..."
CSV.foreach(Rails.root.join("organizations.csv"), headers: true) do |row|
  Organization.create! do |organization|
    organization.id = row[0]
    organization.name = row[1]
  end
end

puts "Importing divisions..."
CSV.foreach(Rails.root.join("divisions.csv"), headers: true) do |row|
  Division.create! do |division|
    division.id = row[0]
    division.name = row[1]
  end
end





puts "Importing institutes..."
CSV.foreach(Rails.root.join("institutes.csv"), headers: true) do |row|
  Institute.create! do |institute|
    institute.id = row[0]
    institute.province_id = row[1]
    institute.city_id = row[2]
    institute.name = row[3]
  end
end