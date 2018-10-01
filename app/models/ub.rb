class Ub < ActiveRecord::Base
    
    belongs_to :pacients
    
    validates_uniqueness_of :description, message: 'Essa UBS já está cadastrada!'
    
end
