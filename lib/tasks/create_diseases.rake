namespace :db do 
    desc 'Doenças'
    
    task create_prm_causes: :environment do
        
        Disease.create(description: "Ausência de indicação clínica no momento")
        
        
        
          end
    end