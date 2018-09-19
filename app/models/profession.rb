class Profession < ActiveRecord::Base
    
    #Pesquisa
    scope :pesquisa, ->(query) {where("profession like ?", "%#{query}%")}
end
