namespace :db do 
    desc 'Criando SFC'
    
    task create_sfcs: :environment do
        
        Sfc.create(description: "Resolvido")
        Sfc.create(description: "Estável")
        Sfc.create(description: "Melhora")
        Sfc.create(description: "Melhora Parcial")
        Sfc.create(description: "Sem Melhora")
        Sfc.create(description: "Piora")
        Sfc.create(description: "Falha")
        Sfc.create(description: "Morte")
        Sfc.create(description: "Sem Condições de Avaliar")
       # Sfc.creare(description: "Teste")
            
        end
        end
    