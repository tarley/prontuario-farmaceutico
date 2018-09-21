## Comandos Rails

Instalar gems
- bundle install

-----------------

Banco de dados
1. Criar o BD:
- rake db:create

2. Migrar as tabelas do BD:
- rake db:migrate

----------------------------

Rodar servidor do Rails
- rails server -b $IP -p $PORT
- 

-----------------------------
2. Gerando as tabelas
-> atendimentos 
rails generate scaffold Attendance general_screen:text attendance_date:datetime pacient:references

-> Tratamento
rails generate scaffold Treatment disease:references attendance:references

-> Plano de Cuidados
rails generate scaffold CarePlan therapeutic_goal:string conduct:string results_date:datetime anothers_conduct:text pharmacotherapy:references prm:references sfc:references prmCause:references 

-> SFC
rails generate scaffold Sfc description:text

-> Doenças
rails generate scaffold Disease name:string description:text

-> Farmacoterapia
rails generate scaffold Pharmacotherapy medicine:string dosageSchedule:string safety:string effectiveness:string useDificulty:string timeUse:integer carePlan:text descriptionDisease:text treatment:references

-> Causas do PRM
rails generate scaffold PrmCause description:string prm:references

-> PRM
rails generate scaffold Prm description:string

---------------------------------------------------------------

População do BD (Tasks)

* Rodar no terminal os comandos abaixo:

1. Criação de Profissões
- rake db:create_professions

2. 

----------------------------------
Trocando de Branch e dando Merge

* Rodar no terminal os comandos abaixo:

1. Trocando de Branch

- git checkout quasenada

---------------------------------------------------------------
Como fazer campo Autocomplete com Jquery, JavaScript no Rails

- https://github.com/bigtunacan/rails-jquery-autocomplete
- https://github.com/rails/jquery-ujs
- https://jqueryui.com/autocomplete/
- 
https://deekysharma.wordpress.com/2015/11/08/rails-4-autocomplete-search-within-input-field/
https://jornadadodev.com.br/cursos/curso-de-ruby-rails/aula-36-criando-um-formulario-de-pesquisa
https://www.google.com.br/search?ei=nDehW92kN4mSwgSk76vgDQ&q=criar+campo+autocomplete+chosen+rails+4&oq=criar+campo+autocomplete+chosen+rails+4&gs_l=psy-ab.3..33i160k1.46594.46805.0.47201.2.2.0.0.0.0.191.191.0j1.1.0....0...1.1.64.psy-ab..1.1.190....0.EnnjHvPEYxw


Usando chosen para campo Autocomplete

- https://translate.google.com.br/translate?hl=pt-BR&sl=en&u=https://github.com/tsechingho/chosen-rails&prev=search
- https://github.com/tsechingho/chosen-rails
