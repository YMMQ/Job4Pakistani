class Experience < ActiveRecord::Base
  belongs_to :work_field
  belongs_to :user
  belongs_to :city
  belongs_to :organization
  
  validates :work_type, 			presence: true
  validates :start_date, 			presence: true
  validates :end_date, 				presence: true
  validates :work_field_id, 	presence: true
end
