class Pharmacotherapy < ActiveRecord::Base
  belongs_to :treatment
  
  validates_presence_of :medicine, message: 'não pode ser deixado em branco'
  validates_presence_of :dosageSchedule, message: 'não pode ser deixado em branco'
  validates_presence_of :safety, message: 'não pode ser deixado em branco'
  validates_presence_of :effectiveness, message: 'não pode ser deixado em branco'
  validates_presence_of :timeUse, message: 'não pode ser deixado em branco'
  validates_presence_of :carePlan, message: 'não pode ser deixado em branco'
  validates_presence_of :descriptionDisease, message: 'não pode ser deixado em branco'
  
  
end
