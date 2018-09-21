class ServiceAccess < ActiveRecord::Base
    
    validates_uniqueness_of :description, message: 'Esse Tipo de Acesso ao Serviço já está cadastrado!'

end
