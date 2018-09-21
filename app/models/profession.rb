class Profession < ActiveRecord::Base
    
    #Pesquisa
    scope :pesquisa, ->(query) {where("profession like ?", "%#{query}%")}
    
    validates_uniqueness_of :description, message: 'Essa Profissão já está cadastrada!'
end
