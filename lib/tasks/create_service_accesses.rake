namespace :db do
  desc 'Criação de Acesso ao Serviço'

  task create_service_accesses: :environment do
    ServiceAccess.create(description: "Encaminhamento pela Clínica de Odontologia da Newton")
    ServiceAccess.create(description: "Encaminhamento pela Clínica de Fisioterapia da Newton")
    ServiceAccess.create(description: "Encaminhamento pela Clínica de Psicologia da Newton")
    ServiceAccess.create(description: "Encaminhamento pela UBS")
    ServiceAccess.create(description: "Busca ativa nas Clínicas ou em eventos")
    ServiceAccess.create(description: "Demanda espontânea (propaganda, outros pacientes)")
    ServiceAccess.create(description: "Outro encaminhamento")
  end
end