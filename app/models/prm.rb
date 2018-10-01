class Prm < ActiveRecord::Base
     scope :pesquisa, ->(query) {where("description ?", "%#{query}%")}
end
