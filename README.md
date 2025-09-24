# Proj Amigos 👥

Aplicação desenvolvida em **Ruby on Rails 7** como prática de CRUD, autenticação e associações.  
O sistema permite que usuários autenticados cadastrem, editem e gerenciem sua lista de amigos.

## Funcionalidades

- Cadastro e login de usuários com **Devise**  
- CRUD completo de amigos (**Friends**)  
- Associações: cada usuário possui sua própria lista de contatos  
- Validações básicas nos formulários (ex: nome e e-mail obrigatórios)  
- Layout com **Bootstrap 5** para navegação e formulários estilizados  

## Tecnologias utilizadas

- Ruby 3.x  
- Rails 7.x  
- SQLite (desenvolvimento)  
- Devise (autenticação)  
- Bootstrap 5 (interface)  

## Como rodar o projeto

```bash
# Instale as dependências
bundle install

# Crie e migre o banco
rails db:create db:migrate

# Inicie o servidor
bin/dev
