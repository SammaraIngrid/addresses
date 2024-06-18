
# Addresses

O **Gerenciador de Endereços** é uma aplicação web desenvolvida com Ruby on Rails que permite aos usuários gerenciar seus endereços de maneira eficiente e organizada. Com esta aplicação, os usuários podem adicionar, editar, visualizar e excluir endereços.


# Instalação

### Pré-requisitos:

Certifique-se de ter as seguintes ferramentas instaladas: 
- [Ruby](https://www.ruby-lang.org/en/downloads/) (versão 3.1.0)
- [Rails](https://rubyonrails.org/) (versão 7.1.3.4) 
- [PostgreSQL](https://www.postgresql.org/download/)

### Passos de Instalação:

- Passo 1:  Clone o repositório:

```git clone https://github.com/SammaraIngrid/addresses.git```
```cd addresses```

- Passo 2:  Instale as dependências do projeto:

```bundle install```

- Passo 3:  Configure o banco de dados:

```rails db:create && rails db:migrate && rails db:seed```

##  Uso

1. Rode o servidor: ```rails s```  ou ```rails server```;
2. Acesse `http://localhost:3000`;
3. Acesse com as credenciais:
```
admin@gmail.com
123456
```
## Teste

Para rodar os testes, execute: 

```bundle exec rspec```
