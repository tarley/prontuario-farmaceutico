class Profession < ActiveRecord::Base
    
    #Pesquisa
    scope :pesquisa, ->(query) {where("description like ?", "%#{query}%")}
    
    belongs_to :pacients
    
    validates_uniqueness_of :description, message: 'Essa Profissão já está cadastrada!'
    
    validates :description, presence: {message: 'não pode ser deixado em branco'},
                            length: {minimum: 2, message: 'deve ter pelo menos 3 caracteres'}
    
end
