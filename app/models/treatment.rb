class Treatment < ActiveRecord::Base
  belongs_to :disease
  belongs_to :attendance
end
