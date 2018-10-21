class Name < ActiveRecord::Base
    
    belongs_to :disease
    
    #Pesquisa
    scope :pesquisa, ->(query) {where("name like ?", "%#{query}%")}
    
    validates_uniqueness_of :description, message: 'Essa doença já está cadastrada!'
end