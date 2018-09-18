class Pharmacotherapy < ActiveRecord::Base
    
    belongs_to :disease
    belongs_to :prm_cause
    belongs_to :attendance
end
