class Education < ActiveRecord::Base
  belongs_to :user
  belongs_to :degre
  belongs_to :institute
  belongs_to :division
  belongs_to :tdegree
  
  validates :division_id, 				presence: true
 


  def institute_name
    institute.try(:name)   
  end

  def institute_name=(name)
    self.institute = Institute.find_or_create_by_name(name) if name.present? 
  end
end
