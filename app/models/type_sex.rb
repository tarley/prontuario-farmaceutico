class TypeSex < ActiveRecord::Base
    
    validates_uniqueness_of :description, message: 'Esse Sexo já está cadastrado!'

end
