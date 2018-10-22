namespace :db do 
    desc 'Doenças'
    
    task create_diseases: :environment do
        Disease.create(description: "Ausência de indicação clínica no momento")
    end

end
        
      
