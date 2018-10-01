class Pacient < ActiveRecord::Base
    
    #Pesquisa
    scope :pesquisa, ->(query) {where("cpf like ?", "%#{query}%")}
    
    has_many :professions
    has_many :service_access
    has_many :ubs
    
    
    validates_presence_of :name, message: 'não pode ser deixado em branco'
    
    validates_length_of :name, minimum: 3, message: 'deve ter pelo menos 3 caracteres'
    
    validates :phone, presence: {message: 'não pode ser deixado em branco'},
                        numericality: {message: 'deve conter somente número'},
                        length: {minimum: 10, message: 'deve conter no mínimo 10 números'}
    
    validates :years_study,     numericality: {:greater_than_or_equal_to  => 0, message: 'deve ser maior ou igual a zero'}
    
    validates :genre,     numericality: {:greater_than  => 0, message: 'deve ser selecionado'}
    
    validates :marital_status,     numericality: {:greater_than  => 0, message: 'deve ser selecionado'}
    

    validates :cpf, presence: {message: 'não pode ser deixado em branco'},
                        numericality: {message: 'deve conter somente número!'},
                        length: {is: 11, message: 'deve conter 11 números!'}    
                                
    validates_uniqueness_of :cpf, message: 'Este CPF já está cadastrado!'                    
    
    
end
