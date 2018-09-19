class PrmCause < ActiveRecord::Base
    has_many :pharmacotherapy
    belongs_to :prm
    
end
