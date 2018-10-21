namespace :db do 
    desc 'Criando Causas do PRM'
    
    task create_prm_causes: :environment do
        
        PrmCause.create(description: "Ausência de indicação clínica no momento")
        PrmCause.create(description: "Uso de múltiplos med quando apenas um (ns) resolveria (m)")
        PrmCause.create(description: "PRM 3 - Medicamento não é efetivo para a condição ")
        PrmCause.create(description: "Terapia não medicamentosa mais apropriada")
        PrmCause.create(description: "Tratamento de reação que poderia ter sido prevenida")
        PrmCause.create(description: "Uso recreacional")
        
        PrmCause.create(description: "Presença de uma condição clínica que requer o uso de meds")
        PrmCause.create(description: "Tratamento profilático necessário para reduzir risco de outro problema")
        PrmCause.create(description: "Tratamento adicional/sinérgico necessário para obter efeito desejado")
        
        PrmCause.create(description: "O medicamento usado não é o mais efetivo para a condição tratada")
        PrmCause.create(description: "A condição tratada é refratária ao medicamento usado")
        PrmCause.create(description: "O medicamento não efetivo para o transtorno")
        PrmCause.create(description: "A forma farmacêutica/produto é inadequada")
        PrmCause.create(description: "Presença de contra indicação")
        
        PrmCause.create(description: "A dose é muito baixa para  produzir a resposta desejada")
        PrmCause.create(description: "Intervalo entre doses maior que o necessário para se alcançar objetivos")
        PrmCause.create(description: "Uma interação reduz a quantidade disponível do fármaco")
        PrmCause.create(description: "Duração do trat. menor que necessário para se obter o efeito desejado")
        PrmCause.create(description: "Administração incorreta")
        PrmCause.create(description: "Armazenamento incorreto")
        
        PrmCause.create(description: "O medicamento produz efeito indesejável que não é relacionado com a dose")
        PrmCause.create(description: "O medicamento produz uma reação alérgica")
        PrmCause.create(description: "O medicamento não é  seguro (presença de fatores risco/contra indicação)")
        PrmCause.create(description: "Interação causa uma reação que não é dose relacionada")
        PrmCause.create(description: "Administração incorreta (dose administrada ou alterada muito rapidamente")
        
        PrmCause.create(description: "A dose é muito alta")
        PrmCause.create(description: "O intervalo entre as doses é menor que o recomendado")
        PrmCause.create(description: "A duração do tratamento é maior que o necessário")
        PrmCause.create(description: "A interação causa uma reação dose relacionada")
        PrmCause.create(description: "A dose do med foi administrada muito rapidamente")
        
        PrmCause.create(description: "O paciente não compreendeu as instruções")
        PrmCause.create(description: "O paciente prefere não utilizar o medicamento")
        PrmCause.create(description: "O paciente esquece de utilizar o medicamento")
        PrmCause.create(description: "O medicamento é muito caro para o paciente")
        PrmCause.create(description: "O paciente não consegue engolir/administrar o med adequadamente")
        PrmCause.create(description: "O produto não está disponível para o paciente")

        end
    end