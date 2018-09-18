class Pacient < ActiveRecord::Base
    
    #Pesquisa
    scope :pesquisa, ->(query) {where("cpf like ?", "%#{query}%")}
    
    belongs_to :profession
    belongs_to :service_access
    belongs_to :ub
    
end
