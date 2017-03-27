class Organization < ActiveRecord::Base
	has_many :jobs
	has_many :advertises
	has_many :experiences
end
