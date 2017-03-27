class Province < ActiveRecord::Base
	has_many :cities
	has_many :institutes
	has_many :userinfos
end
