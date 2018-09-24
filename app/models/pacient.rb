class Pacient < ActiveRecord::Base
    
    #Pesquisa
    scope :pesquisa, ->(query) {where("cpf like ?", "%#{query}%")}
    
    belongs_to :profession
    belongs_to :service_access
    belongs_to :ub
    
    
    validates_presence_of :name, message: 'não pode ser deixado em branco'
    validates_presence_of :phone, message: 'não pode ser deixado em branco'
    
    validates_length_of :name, minimum: 2, message: 'deve ter pelo menos 2 caracteres'
    validates_length_of :phone, maximum: 11, message: 'deve ter até 11 caracteres'
    
    validates_uniqueness_of :cpf, message: 'Esse CPF já está cadastrado!'
    
end
