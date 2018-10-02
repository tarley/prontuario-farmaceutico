class Ub < ActiveRecord::Base
    
    belongs_to :pacient
    
    validates_uniqueness_of :description, message: 'Essa UBS já está cadastrada!'
    
end
