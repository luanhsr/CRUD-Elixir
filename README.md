# CRUD-Elixir
 Um cadastro de usuário simples com Elixir framework Phoenix com o banco de dados Postgree:
 
Passo 1: Clone o repositório: 
$git clone https://github.com/luanhsr/CRUD-Elixir.git

Passo 2: abra o terminal com modo administrador para baixar o chocolatey digite o seguinte comando:

```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```



Passo 3: Digite o comando a baixo para baixar o elixir:

```
choco install elixir

```

Passo 4: instale o framework phoenix:
```
mix archive.install hex phx_new 1.5.9

```

Passo 5: Baixe o postegreSQL 15.4+: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
OBS: fique atento as configuracoes que ira inserir no banco de dados pois sera utilizada posteriormente no projeto


Passo 6: Com o terminal, navegue ate o diretorio raiz do projeto "reg_user".
```
cd CRUD-Elixir-main\CRUD\reg_user
```
Passo 7: Dentro do diretorio reg_user instale as dependencias necessarias com o comando:
```
mix deps.get
```

Passo 8: abra seu editor de codigo em reg_user > config, atualize as informações de acordo com seu banco de dados no arquivo dev.exs
```elixir
config :reg_user, RegUser.Repo,
  username: "USERNAMEPOSTGREE",
  password: "SENHAPOSTGREE",
  hostname: "HOSTPOSTGREE",
  database: "reg_user_dev",
```
Passo 9: apos configurar o banco de dados, dentro do diretorio dev.exs, crie o banco de dados com o comando: 

```
mix ecto.create.
```
Passo 10: Faca as migrações necessarias com o comando: 
```
mix ecto.migrate
```

Passo 11: Rode o projeto com: 
```
mix phx.server
```
Passo 12: Abra o navegador:
Acesse o projeto no navegador utilizando o endereço configurado (por padrão, será http://localhost:4000/).
