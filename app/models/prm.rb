class Prm < ActiveRecord::Base
    
    #has_many :prm_causes
    
    belongs_to :prm_causes
end
