## Comandos Rails Equipe Quasenada

Instalar gems
- bundle install

--------------------------------

Banco de dados
1. Criar o BD:
- rake db:create

2. Migrar as tabelas do BD:
- rake db:migrate

-------------------------------

Rodar servidor do Rails
- rails server -b $IP -p $PORT
- 

-----------------------------
2. Gerando as tabelas
-> atendimentos 
rails generate scaffold Attendance general_screen:text attendance_date:datetime pacient:references

----------------------------------------

Populando o BD (Tasks)

* Rodar no terminal os comandos abaixo:

1. Criação de Profissões
- rake db:create_professions

2. Criação de UBS
- rake db:create_ubs

3. Criação de Acessos ao Serviço
- rake db:create_service_access

4. Criação PRM Causes
- rake db:create_prm_causes

5. Criação PRM
- rake db:create_prms

6. Criação SFCS
- rake db:create_sfcs

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

Como fazer o campo autocomplete com chosen

- https://www.youtube.com/watch?v=KfJyHbZFyFg
- https://github.com/bfcoder/bootstrap-chosen-rails

--------------------------------------------------------------

Como fazer campo Autocomplete com Jquery, JavaScript no Rails

- https://github.com/gorails-screencasts/gorails-episode-192
- https://gorails.com/episodes/global-autocomplete-search?autoplay=1
- https://translate.google.com.br/translate?hl=pt-BR&sl=en&u=https://api.rubyonrails.org/v5.1/classes/ActiveRecord/Associations/CollectionProxy.html&prev=search

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
- https://github.com/tsechingho/chosen-rails

-----------------------------------------------------

* Criar modal para salvar ser atualizar a página
- https://www.youtube.com/watch?v=PGzkcUkoICg
- https://nandovieira.com.br/usando-responders-no-rails
- 
* Colocar dicas nos campos
- https://getbootstrap.com/docs/4.1/components/tooltips/
- 
https://www.w3schools.com/jsref/event_onfocus.asp