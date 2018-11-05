class Disease < ActiveRecord::Base
    

  
  
  #Relacionamentos
  has_many :pacients
  has_many :pharmacotherapies
  has_many :care_plans
  has_many :attendances
  has_many :diseases
  has_many :treatment
    
  belongs_to :pacient
  belongs_to :pharmacotherapy
  belongs_to :care_plan
  belongs_to :attendance
  belongs_to :disease  
  belongs_to :treatment
  
  
  validates_presence_of :name, message: 'não pode deixar em branco'
  validates_presence_of :description, message: 'não pode deixar em branco' 
  
  
  
  
    

end
