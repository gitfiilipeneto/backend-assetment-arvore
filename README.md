<!-- # SchoolsApi

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
# backend-assetment-arvore -->

# backend-assetment-arvore -- backend-assetment-arvore
 
Construir uma API usando Phoenix (elixir) e banco de dados MySQL visando permitir a um parceiro da Árvore replicar a sua estrutura de Redes, Escolas, Turmas e administrá-la conforme necessário.

## Pré-requisitos:

### Elixir
https://elixir-lang.org/
 
* #### macOS
Usando o Homebrew:

Execute no terminal o comando:

`brew install elixir`

 * #### Ubuntu or Debian


No terminal:

Adicione o repositório "Erlang Solutions":

`wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb`

Execute o comando:

`sudo apt-get update`

Instale a plataforma "Erlang/OTP" e todas as suas aplicações com:

`sudo apt-get install esl-erlang`

Instale o Elixir:

`sudo apt-get install elixir`


### MySQL

https://www.mysql.com/

#### macOS

Usando o Homebrew:

instale o mysql com o comando:

`brew install mysql`

Carregue e inicie o pacote de serviços do mysql com:

`brew services start mysql`

então execute:

`brew services list`

#### Ubuntu

Adaptado de:

https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04-pt
	
Instale o pacote ‘mysql-server’ com:

`sudo apt install mysql-server`

Execute o script de segurança com o sudo:

`sudo mysql_secure_installation`


Isso levará você através de uma série de prompts onde é possível fazer algumas alterações nas opções de segurança de sua instalação do MySQL. O primeiro prompt perguntará se você gostaria de definir o plug-in de validar senha, que pode ser usado para testar a força de sua senha do MySQL.

Caso você escolha configurar o plug-in de validar senha, o script solicitará que você escolha um nível de validação de senha. O nível mais forte — que você seleciona ao digitar 2 — exigirá que sua senha tenha pelo menos oito caracteres de tamanho e inclua uma mistura de caracteres em maiúsculo, minúsculo, numérico e especial:

![image](https://user-images.githubusercontent.com/59828761/151058969-a566810d-ce13-4be5-bf2b-6c3e0d783449.png)

Independentemente de você escolher configurar o plug-in de validar senha, o próximo prompt será o de definir uma senha para o usuário root(esse é o usuário que está sendo usado para criar o banco de dados dentro da aplicação) do MySQL. Digite e, em seguida, confirme uma senha segura de sua escolha:

![image](https://user-images.githubusercontent.com/59828761/151059037-97a3d5df-6624-40ec-b300-a644d8c456ec.png)

Caso tenha usado o plug-in de validar senha, você receberá o feedback da força dela. Então, o script perguntará se você deseja continuar com a senha que acabou de digitar, ou se quer digitar uma nova. Supondo que esteja satisfeito com a força da senha que acabou de digitar, digite Y para continuar o script.
A partir daí, pressione Y e, depois, ENTER para aceitar as configurações padrão para todas as perguntas subsequentes. Isso removerá alguns usuários anônimos e o banco de dados de teste, desativará os logins remotos para a raiz e carregará essas novas regras para que o MySQL respeite imediatamente as alterações que você fez.

Testando o mysql:

Execute o comando:

`systemctl status mysql.service`

deverá aparecer uma tela como essa: 
![image](https://user-images.githubusercontent.com/59828761/151059519-44271b2f-e428-4a7d-aaac-6eb3e5231f05.png)

Se o MySQL não estiver funcionando, inicie-o com o comando:

`sudo systemctl start mysql`


