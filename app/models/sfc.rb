class Sfc < ActiveRecord::Base
    
    #Relacionamentos
  has_many :attendances
  
  has_many :care_plans
    
  belongs_to :attendance
  
  belongs_to :care_plan
    
    
  
    
    scope :pesquisa, ->(query) {where("description like ?", "%#{query}%")}
    
end
