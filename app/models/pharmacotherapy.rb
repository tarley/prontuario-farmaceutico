class Pharmacotherapy < ActiveRecord::Base
  belongs_to :treatment
  
  validates_presence_of :conduct, message: 'não pode ser deixado em branco'
  
  
end
