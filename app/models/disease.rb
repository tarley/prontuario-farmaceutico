class Disease < ActiveRecord::Base
    
  validates_uniqueness_of :name, message: 'Essa Doença já está cadastrada!'
  validates_presence_of :name, message: 'não pode deixar em branco'
  validates_presence_of :description, message: 'não pode deixar em branco'
  
    
    
end
