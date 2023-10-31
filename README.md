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
passo 4: para poder ter acesso aos comandos mix pelo terminal crie uma variavel de ambiente adicionando o path do elixir, seguindo os passos do link a baixo, no momento de adicionar o local do patch, use o endereco que esta o elixir pelo chocolatey, por padrao seria: 
C:\ProgramData\chocolatey\lib\elixir\tools\bin
https://www.oobj.com.br/bc/article/como-configurar-variavel-de-ambiente-no-windows-para-emiss%C3%A3o-de-mf-e-1180.html


Passo 5: instale o framework phoenix:
```
mix archive.install hex phx_new 1.5.9

```

Passo 6: Baixe o postegreSQL 15.4+: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
OBS: fique atento as configuracoes que ira inserir no banco de dados pois sera utilizada posteriormente no projeto


Passo 8: Com o terminal, navegue ate o diretorio raiz do projeto "reg_user".
```
cd CRUD-Elixir-main\CRUD\reg_user
```
Passo 9: Dentro do diretorio reg_user instale as dependencias necessarias com o comando:
```
mix deps.get
```

Passo 10: abra seu editor de codigo em reg_user > config, atualize as informações de acordo com seu banco de dados no arquivo dev.exs
```elixir
config :reg_user, RegUser.Repo,
  username: "USERNAMEPOSTGREE",
  password: "SENHAPOSTGREE",
  hostname: "HOSTPOSTGREE",
  database: "reg_user_dev",
```
Passo 11: apos configurar o banco de dados, dentro do diretorio dev.exs, crie o banco de dados com o comando: 

```
mix ecto.create.
```
Passo 12: Faca as migrações necessarias com o comando: 
```
mix ecto.migrate
```

Passo 13: Rode o projeto com: 
```
mix phx.server
```
Passo 14: Abra o navegador:
Acesse o projeto no navegador utilizando o endereço configurado (por padrão, será http://localhost:4000/).
