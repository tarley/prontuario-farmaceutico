class Sfc < ActiveRecord::Base
    scope :pesquisa, ->(query) {where("description like ?", "%#{query}%")}
end
