class Degre < ActiveRecord::Base
	has_many :educations
	has_many :jobs
	belongs_to :tdegree
	
end
