# CRUD-Elixir
 Um cadastro de usuário simples com Elixir framework Phoenix com o banco de dados Postgree:
Passo 1: Clone o repositório.

Passo 2: Com o terminal, navegue ate o diretorio raiz do projeto "reg_user".

Passo 3: Dentro do diretorio reg_user instale as dependencias Elixir necessarias com o comando:
mix deps.get

Passo 4: abra seu editor de codigo em reg_user > config no seu editor de código, atualize as informações de acordo com seu banco de dado em arquivo dev.exs
`
config :reg_user, RegUser.Repo,
  username: "USERNAMEPOSTGREE",
  password: "SENHAPOSTGREE",
  hostname: "HOSTPOSTGREE",
  database: "reg_user_dev",
`
Passo 5: apos configurar o banco de dados, dentro do diretorio dev.exs, crie o banco de dados com o comando: mix ecto.create.
Passo 6: Faca as migrações necessarias com o comando: mix ecto.migrate
Passo 7: Rode o projeto com: mix phx.server
Passo 8: abra em seu navegador com de acordo com o localhost configurado ex: http://localhost:4000/