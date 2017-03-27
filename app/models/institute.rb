class Institute < ActiveRecord::Base
  belongs_to :city
  has_many :educations
  belongs_to :province
  
  def name_with_city
   "#{name} #{city.name}"
  end
end
