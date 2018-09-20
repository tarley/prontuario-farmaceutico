class Ub < ActiveRecord::Base
    
    validates_uniqueness_of :description, message: 'Essa UBS já está cadastrada!'
    
end
