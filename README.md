## GesFar - Sistema Farmacêutico

GesFar é um sistema para controle e gestão de atendimentos farmaêuticos. O software é um sistema aberto sendo desenvolvido pelos alunos do curso de Sistemas de Informação do Centro Universitário Newton Paiva.

O sistema tem como objetivo atender a demanda da Escola e Clínica de Farmácia da mesma instituição dos desenvolvedores. e será utlizado por professores farmacêuticos e alunos estudantes e bolssistas na cliníca de farmácia.

## Índice

Em breve...

#### Comandos GIT

git checkout "branch"

git add *

git commit -am "first commit"

git push

git pull

git status

#### Como iniciar o server Rails

rails server -p $PORT -b $IP

#### Como consultar o Banco de Dados SQLite

rails dbconsole

#### Populando o BD (Tasks)

* Rodar no terminal os comandos abaixo:

1. Criação de Profissões
- rake db:create_professions

2. Criação de UBS
- rake db:create_ubs

3. Criação de Acessos ao Serviço
- rake db:create_service_access
- 
4. Criação PRM Causes
- rake db:create_prm_causes

5. Criação PRM
- rake db:create_prms

6. Criação SFCS
- rake db:create_sfcs

#### Criação do primeiro usuário

#### Entrar no rails console

#### Copiar e colar o código do lado -> User.create(email: "administrador@email.com", name: "Administrador", password: "123456", profile: 0)