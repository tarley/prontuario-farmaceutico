class Pacient < ActiveRecord::Base
    
    #Pesquisa
    scope :pesquisa, ->(query) {where("cpf like ?", "%#{query}%")}
    
    #Relacionamentos
    has_many :profession, as: :description  #tem que pegar o id e não a description da profissão
    has_many :ub, as: :description   #tem que pegar o id e não a description
    has_many :service_access, as: :description   #tem que pegar o id e não a description
    
    
    has_many :professions
    has_many :ubs
    has_many :service_access
    
    belongs_to :profession
    belongs_to :service_access
    belongs_to :ub
    
    
    validates_presence_of :name, message: 'não pode ser deixado em branco'
    
    validates_length_of :name, minimum: 3, message: 'deve ter pelo menos 3 caracteres'
    
    validates :phone, presence: {message: 'não pode ser deixado em branco'},
                      numericality: {:greater_than_or_equal_to => 0, message: 'deve conter somente números positivos'},
                      length: {in: 10..11, message: 'deve conter de 10 à 11 números'}
                      #numericality: {message: 'deve conter somente número'},
                      #length: {minimum: 10, message: 'deve conter no mínimo 10 números'}
    
    validates :years_study, numericality: {:greater_than_or_equal_to => 0, message: 'deve ser maior ou igual a zero'}
    
    validates :genre, numericality: {:greater_than => 0, message: 'deve ser selecionado'}
    
    validates :marital_status, numericality: {:greater_than => 0, message: 'deve ser selecionado'}
    
    validates :cpf, presence: {message: 'não pode ser deixado em branco'},
                    numericality: {message: 'deve conter somente número!'},
                    length: {is: 11, message: 'deve conter 11 números!'}    
                                
    validates_uniqueness_of :cpf, message: 'Este CPF já está cadastrado!'                    
    
end
