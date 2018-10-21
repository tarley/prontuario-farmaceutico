class Ub < ActiveRecord::Base
    
    belongs_to :pacients
    
    validates_uniqueness_of :description, message: 'Essa UBS já está cadastrada!'
    
    validates :description, presence: {message: 'não pode ser deixado em branco'},
                            length: {minimum: 2, message: 'deve ter pelo menos 3 caracteres'}
    
end
