class Disease < ActiveRecord::Base
    
  validates_uniqueness_of :name, message: 'Essa Doença já está cadastrada!'

    
end
