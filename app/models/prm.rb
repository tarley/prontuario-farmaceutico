class Prm < ActiveRecord::Base
    scope :pesquisa, ->(query) {where("description ?", "%#{query}%")}
    scope :pesquisa, ->(query) {where("description like ?", "%#{query}%")}
    
    
    belongs_to :attendances
    belongs_to :care_plans
    
    
    #Relacionamentos
  #has_many :pacients
  #has_many :prms
  has_many :prm_causes
  #has_many :diseases
  #has_many :pharmacotherapies
  #has_many :sfcs
  has_many :care_plans
    
  #belongs_to :pacient
  #belongs_to :prm
  #belongs_to :prm_cause
  #belongs_to :disease
  #belongs_to :pharmacotherapy
  #belongs_to :sfc
  #belongs_to :care_plan
  
  
  
    
end
