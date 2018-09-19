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
pacient:references



-> Tratamento
rails generate scaffold Treatment 
pharmacotherapy:references attendance:references

-> Plano de Cuidados
rails generate scaffold CarePlan therapeutic_goal:string
conduct:string results_date:datetime anothers_conduct:Text
pharmacotherapy:references prm:references sfc:references
prmcause:references

-> SFC
rails generate scaffold Sfc description:Text


-> Doenças
rails generate scaffold Disease name:string description:string
attendance:references



-> Farmacoterapia
rails generate scaffold Pharmacotherapy 
medicine:string dosageSchedule:string 
safety:string effectiveness:string 
useDificulty:string timeUse:integer
carePlan:text descriptionDisease:Text Disease:references

-> Causas do PRM
rails generate scaffold PrmCause description:String 
prm:references

-> PRM
rails generate scaffold Prm description:string
