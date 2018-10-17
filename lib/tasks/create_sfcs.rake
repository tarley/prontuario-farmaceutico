<<<<<<< HEAD
namespace :db do
  desc 'SFC'

  task create_sfcs: :environment do
    SFC.create(description: "INICIAL, , ,  	, , , 		 ")
    SFC.create(description: "RESOLVIDO")
    SFC.create(description: "ESTÁVEL")
    SFC.create(description: "MELHORA")
    SFC.create(description: "PARCIAL")
    SFC.create(description: "SEM MELHORA,")
    SFC.create(description: "PIORA")
    SFC.create(description: "FALHA")
    SFC.create(description: "MORTE")
    SFC.create(description: "SEM CONDIÇÕES DE AVALIAR")
     
  end
end
=======
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
>>>>>>> f90edb0ed92f9cd8466a73d5b288c7c0bdecc2f0
