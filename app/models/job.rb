class Job < ActiveRecord::Base
  belongs_to :advertise
  belongs_to :work_field
  belongs_to :degre
  belongs_to :city



   

end
