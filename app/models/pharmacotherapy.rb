class Pharmacotherapy < ActiveRecord::Base
  belongs_to :treatments
  belongs_to :carePlans
  belongs_to :prmCauses
  belongs_to :attendances
  belongs_to :prms
  belongs_to :pacients
  belongs_to :diseases
  
  #Relacionamentos
  #has_many :prm, as: :description  #tem que pegar o id e não a description
  #has_many :pacient,  as: :name
  #has_many :prmCause, as: :description  #tem que pegar o id e não a description
  #has_many :attendance
  
  
  #Relacionamentos
  has_many :pacient
  #has_many :prms
  #has_many :prm_causes
  #has_many :diseases
  #has_many :care_plans
  #has_many :sfcs
    
  #belongs_to :pacient
  #belongs_to :prm
  #belongs_to :prm_cause
  #belongs_to :disease
  #belongs_to :sfc
  #belongs_to :care_plan
  
  #Relacionamentos
  
    
  
  
  
 
  
  

  validates_presence_of :medicine, message: 'não pode ser deixado em branco'
  validates_presence_of :dosageSchedule, message: 'não pode ser deixado em branco'
  validates_presence_of :safety, message: 'não pode ser deixado em branco'
  validates_presence_of :effectiveness, message: 'não pode ser deixado em branco'
  validates_presence_of :timeUse, message: 'não pode ser deixado em branco'
  validates_presence_of :carePlan, message: 'não pode ser deixado em branco'
  #validates_presence_of :descriptionDisease, message: 'não pode ser deixado em branco'
  
  
end
