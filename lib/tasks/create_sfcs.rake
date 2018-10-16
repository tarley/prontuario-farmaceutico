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