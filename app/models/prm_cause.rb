class PrmCause < ActiveRecord::Base
    scope :pesquisa, ->(query) {where("description like ?", "%#{query}%")}
    belongs_to :prm
end
