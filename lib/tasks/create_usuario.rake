namespace :db do 
    desc 'Criando Usuário'
    
    task create_usuario: :environment do
        
        User.create(email: "administrador15@email.com", name: "Administrador", password: "123456", profile: 0)
    
    end

end