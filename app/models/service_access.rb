class ServiceAccess < ActiveRecord::Base
    
    belongs_to :pacients
    
    validates_uniqueness_of :description, message: 'Esse Tipo de Acesso ao Serviço já está cadastrado!'
    
    validates :description, presence: {message: 'não pode ser deixado em branco'},
                            length: {minimum: 2, message: 'deve ter pelo menos 3 caracteres'}

end
