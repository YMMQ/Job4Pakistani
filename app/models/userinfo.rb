class Userinfo < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  belongs_to :province
  validates :mobile, 		presence: true
  validates :address, 	presence: true
end
