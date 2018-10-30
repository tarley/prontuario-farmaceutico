class Pacient < ActiveRecord::Base
    
    #Relacionamentos
  has_many :pacients
  has_many :prms
  has_many :prm_causes
  has_many :diseases
  has_many :pharmacotherapies
  has_many :sfcs
  has_many :care_plans
  
    
  belongs_to :pacient
  belongs_to :prm
  belongs_to :prm_cause
  belongs_to :disease
  belongs_to :pharmacotherapy
  belongs_to :sfc
  belongs_to :care_plan
  
  
 
    
    
    
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
    
    
    validates :name, presence: {message: 'não pode ser deixado em branco'},
                     length: {in: 3..100, message: 'deve conter de 3 a 100 caracteres'}
    
    validates :phone, presence: {message: 'não pode ser deixado em branco'},
                      numericality: {:greater_than_or_equal_to => 0, message: 'deve conter somente números positivos'},
                      length: {in: 10..11, message: 'deve conter de 10 à 11 números'}
                      #numericality: {message: 'deve conter somente número'},
                      #length: {minimum: 10, message: 'deve conter no mínimo 10 números'}
    
    #validates :years_study, length: {in: 0..50, message: 'deve conter de 10 à 11 números'}
                            
    validates_length_of :years_study, minimum: 0, message: 'o número deve ser maior ou igual a 0.'
    validates_length_of :years_study, maximum: 50, message: 'pode conter até 50 números'
    
    validates :genre, numericality: {:greater_than => 0, message: 'deve ser selecionado'}
    
    validates :marital_status, numericality: {:greater_than => 0, message: 'deve ser selecionado'}
    
    validates :cpf, presence: {message: 'não pode ser deixado em branco'},
                    numericality: {message: 'deve conter somente número!'},
                    length: {is: 11, message: 'deve conter 11 números!'}    
                                
    validates_uniqueness_of :cpf, message: 'Este CPF já está cadastrado!'                    
    
end
