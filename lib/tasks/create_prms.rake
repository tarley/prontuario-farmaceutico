namespace :db do 
    desc 'Criando PRM'
    
    task create_prms: :environment do
        
        Prm.create(description: "PRM 1 - Medicamento desnecessario ")
        Prm.create(description: "PRM 2 - Necessidade de medicamento ")
        Prm.create(description: "PRM 3 - Medicamento não é efetivo para a condição ")
        Prm.create(description: "PRM 4 - Dose ")
        Prm.create(description: "PRM 5 - Reação adversa ao medicamento ")
        Prm.create(description: "PRM 6 - Dose alta ")
        Prm.create(description: "PRM 7 - Não adesão ")
    
    end

end