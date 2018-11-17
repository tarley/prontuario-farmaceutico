class Attendance < ActiveRecord::Base
  #Relacionamentos
  has_many :pacients
  has_many :attendances
  #has_many :prms
  #has_many :prm_causes
  has_many :diseases
  
  
  
  #has_many :pharmacotherapies
  #has_many :sfcs
  #has_many :care_plans
    
  belongs_to :pacient
  #belongs_to :prm
  #belongs_to :prm_cause
  belongs_to :disease
  #belongs_to :pharmacotherapy
  belongs_to :attendace
  belongs_to :treatment
  #belongs_to :care_plan
  
  
  
 

  

  
  
  
  validates_presence_of :general_screen, message: 'não pode deixar em branco'
  
end
