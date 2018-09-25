class CarePlan < ActiveRecord::Base
  belongs_to :pharmacotherapy
  belongs_to :prm
  belongs_to :sfc
  belongs_to :prmCause
end
