## Comandos Rails

Instalar gems
- bundle install

-----------------

Banco de dados
1. Criar o BD:
- rake db:migrate

2. Migrar as tabelas do BD:
- rake db:migrate

----------------------------

Rodar servidor do Rails
- rails server -b $IP -p $PORT
- 

-----------------------------
2. Gerando as tabelas
-> atendimentos 
rails generate scaffold Attendance general_screen:Text

-> Tratamento
rails generate scaffold Treatment 
Pharmacotherapy:references Attendance:references

-> Plano de Cuidados
rails generate scaffold CarePlan therapeutic_goal:string
conduct:string results_date:datetime anothers_conduct:Text
Pharmacotherapy:references PRM:references SFC:references
PRMCause:references

-> SFC
rails generate scaffold SFC description:Text


-> Doenças
rails generate scaffold Disease name:string description:string
Attendance:references



-> Farmacoterapia
rails generate scaffold Pharmacotherapy 
medicine:string dosageSchedule:string 
safety:string effectiveness:string 
        useDificulty:string **timeUse:int** 
carePlan:text descriptionDisease:Text Disease:references

-> Causas do PRM
rails generate scaffold PRMCause description:String 
PRM:references

-> PRM
rails generate scaffold PRM description:string
