class WorkField < ActiveRecord::Base
	has_many :experiences
	has_many :jobs
end
