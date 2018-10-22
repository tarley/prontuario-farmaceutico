## Comandos Rails Equipe Quasenada

Instalar gems
- bundle install

--------------------------------

Banco de dados
1. Criar o BD:
- rake db:create

2. Migrar as tabelas do BD:
- rake db:migrate

-----------------------------gi--

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


-> Causas do PRM
rails generate scaffold PrmCause description:string prm:references

-> PRM
rails generate scaffold Prm description:string


----------------------------------------

População do BD (Tasks)

* Rodar no terminal os comandos abaixo:

1. Criação de Profissões
- rake db:create_professions

2. Criação de UBS
- rake db:create_ubs

3. Criação de Acessos ao Serviço
- rake db:create_service_access

4. Criação do primeiro usuário

- Entrar no rails console

- Copiar e colar o código do lado -> User.create(email: "administrador@email.com", name: "Administrador", password: "123456", profile: 0)


----------------------------------------------

Comandos Git / Trocar de Branch / Fazer Merge

* Rodar no terminal os comandos abaixo:

1. Enviar modificações para o GitHub
- git status
- git add *
- git commit -m "Comentário"
- git push origin releases/0.1.0

2. Trocar de Branch
- git checkout quasenada
ou
- git checkout master

3. Fazer merge
- git checkout master
- git merge quasenada

4. Puxar modificações para a maquina
- git pull origin quasenada

5. Voltar o fonte local para um commit antigo especifico!
- git reset --hard "nome da tag ou Hash do Commit !"

----------------------------------------------------------------------------------

Como relacionar tabelas

- https://www.devmedia.com.br/introducao-a-relacionamentos-no-ruby-on-rails/33860

-----------------------------------------------------------------------------------

- http://www.natanaelfonseca.com.br/2013/06/git-revertendo-para-um-commit-especifico.html

