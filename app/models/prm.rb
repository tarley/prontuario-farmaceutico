class Prm < ActiveRecord::Base
     scope :pesquisa, ->(query) {where("description ?", "%#{query}%")}
    scope :pesquisa, ->(query) {where("description like ?", "%#{query}%")}
end
