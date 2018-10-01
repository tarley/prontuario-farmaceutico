class Prm < ActiveRecord::Base
<<<<<<< HEAD
    scope :pesquisa, ->(query) {where("description like ?", "%#{query}%")}
=======
     scope :pesquisa, ->(query) {where("description ?", "%#{query}%")}
>>>>>>> master
end
