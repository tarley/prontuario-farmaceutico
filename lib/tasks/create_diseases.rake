namespace :db do 
    desc 'Doenças'
    
    task create_diseases: :environment do
        Disease.create(description: "Ausência de indicação clínica no momento")
    end
end
<<<<<<< HEAD
        
      
=======
>>>>>>> 546dcc03057188696cff55d849333ced8af98305
