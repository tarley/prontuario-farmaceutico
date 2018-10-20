class CarePlan < ActiveRecord::Base
  
  belongs_to :pharmacotherapy
  belongs_to :prm
  belongs_to :sfc
  belongs_to :prmCause
  

  
  has_many :pharmacotherapy
 
  
  
  
  validates_presence_of :therapeutic_goal, message: 'não pode deixar em branco'
  validates_presence_of :conduct, message: 'não pode deixar em branco'
  ##validates_presence_of :pharmacotherapy, message: 'não pode deixar em branco'
  ##validates_presence_of :prm, message: 'não pode deixar em branco'
  ##validates_presence_of :prmCause, message: 'não pode deixar em branco'
  
  
  
  
  validates_presence_of :sfc, message: 'não pode deixar em branco'
  
end
