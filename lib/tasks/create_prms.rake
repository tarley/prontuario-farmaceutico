namespace :db do 
    desc 'Criando PRM'
    
    task create_prms: :environment do
        
        Profession.create(description: "1 - Medicamento desnecessario ")
        Profession.create(description: "2 - Necessidade de medicamento ")
        Profession.create(description: "3 - Medicamento não é efetivo para a condição ")
        Profession.create(description: "4 - Dose ")
        Profession.create(description: "5 - Reação adversa ao medicamento ")
        Profession.create(description: "6 - Dose alta ")
        Profession.create(description: "7 - Não adesão ")
    
        end

    end