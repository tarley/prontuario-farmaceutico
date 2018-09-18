class Attendance < ActiveRecord::Base
    
    has_many :pharmacotherapy
    #belongs_to :paciente
end
