class City < ActiveRecord::Base
	has_many 	:institutes
	has_many 	:jobs
	has_many 	:experiences
	has_many	:userinfos
	belongs_to	:province
end
