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

# backend-assetment-arvore 
 
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

## Visualizando o Banco de dados com alguma ferramenta de banco de dados a sua escolha:

### Nesse exemplo vai ser usando o DBeaver Community Edition.

Instalando o DBeaver

#### macOS
Usando o Brew, no terminal digite:

`brew install --cask dbeaver-community`

#### Linux

Usando o snap, no terminal digite:

`sudo snap install dbeaver-ce`


## Clonando o repositório e executando o projeto:
	
no terminal, clone o repositório com o comando: 

`git clone https://github.com/gitfiilipeneto/backend-assetment-arvore.git`

você verá uma tela como essa:

![image](https://user-images.githubusercontent.com/59828761/151080040-30d114d8-b4b3-4e4b-b711-a377ff5b86a1.png)


Navegue até a pasta do repositorio clonado:

`cd backend-assetment-arvore`

e inicie o projeto usando alguma IDE de sua escolha, nesse exemplo usando o VScode vamos só iniciar o projeto dentro da pasta com o seguinte comando:
`code .`

a essa altura você ja deve estar vendo a estrutura do projeto:

![image](https://user-images.githubusercontent.com/59828761/151080214-4a91f496-2077-4deb-ae21-bdbfca425851.png)

## Criando o Banco de dados, instalando as dependencias e executando o projeto

Habilite o terminal dentro do Vscode, no menu superior na aba "Terminal" -> "new terminal"

instale as dependencias com o comando:

`mix deps.get`

Irá aparecer uma tela similar a essa:

![image](https://user-images.githubusercontent.com/59828761/151080871-7f4601d3-5ce0-4371-8d22-14498b00d3f1.png)
![image](https://user-images.githubusercontent.com/59828761/151080899-720b5469-f6b3-4206-9dd1-2e9b4d903d7d.png)

Execute o comando para criar o banco de dados:

`mix ecto.setup`

esse comando vai criar um banco mysql e ja popular ele com algumas amostras de exemplo que estão no arquivo /priv/repo/seeds.exs ao finalizar se estiver tudo certo até aqui, verá essas informações no terminal:

![image](https://user-images.githubusercontent.com/59828761/151081266-9dd5f327-7df5-4daa-b82a-ab8b805f61c8.png)

Você pode verificar o seu banco de dados no terminal do mysql com os seguintes comandos:

`mysql -u root -p` 

as flags -u e -p indicam respectivamente user e password e a senha vai ser a que você definiu na hora de instalar o mysql, digite a senha e quando entrar no termimal mysql digite:

`mysql SHOW DATABASES;`

(não esquece do ";" se não não funciona!!!)

Você verá o banco de dados de desenvolvimento schools_api_dev:


![image](https://user-images.githubusercontent.com/59828761/151081644-bb3cd8c6-c420-4677-8696-c68fa09055a4.png)


## Iniciando o servidor com o Phoenix

Inicie um servidor com o comando: `mix phx.server`

Se aparecer uma tela parecida com essa então o server do phoenix ja está rodando!! YAY!!!

![image](https://user-images.githubusercontent.com/59828761/151081804-b7d0549e-7bdb-4ad4-ad5a-79e396d82d1d.png)

No seu navegador vá para o endereço http://localhost:4000 e vai aparecer a seguinte tela:

![image](https://user-images.githubusercontent.com/59828761/151081959-9a72052e-4791-45ab-820d-e966ef696de6.png)

Uma vez com isso em mãos já podemos, de maneira local, trabalhar com a aplicação!

## Métodos alocados e exemplos de requisição

Usando alguma "API design platform" de sua escolha(postman, insomnia, thunderclient) podemos começar a usar as seguintes requisições para a nossa API:

nesse exemplo estou usando o Thunder Client - extensão do VScode para demonstrar os métodos e suas respostas.

O método GET no endpoint http://localhost:4000/api/partners/entities/ nos retorna todas as entradas disponiveis no banco recém criado:

![image](https://user-images.githubusercontent.com/59828761/151082395-90d3e101-a712-4ef3-b98a-702628451a54.png)

O método GET no endpoint http://localhost:4000/api/partners/entities/:id  onde :id deve ser um index do banco, retorna especificamente a resposta desse id.

ex: GET no endpoint http://localhost:4000/api/partners/entities/2  retorna o resultado de id 2 no banco.

![image](https://user-images.githubusercontent.com/59828761/151082571-229f7270-3ed3-4372-98d6-0cef6a13bd01.png)

O método POST no endpoint http://localhost:4000/api/partners/entities/ nos permite criar entradas nos bancos de dados, para isso devemos enviar no bdy da requisição os dados da entitie que queremos no seguinte formato:

{"entity":{
  "name": "Escola Exemplo criada com o post",
  "entity_type": "school",
  "inep": "123455556",
  "parent_id": null
}
}

ao executar o POST com esses parametros a resposta deve ser:

![image](https://user-images.githubusercontent.com/59828761/151082911-7347dffd-9044-49ff-82a7-3529d8df26a9.png)

O método PUT no endpoint http://localhost:4000/api/partners/entities/:id  onde :id deve ser um index do banco, nos permite editar os valores desse id, esse método também precisa que seja enviado no body quais valores vamos editar.

ex:

PUT no endpoint http://localhost:4000/api/partners/entities/2 com o body exatamente igual ao do metodo POST acima, nos retorna:

![image](https://user-images.githubusercontent.com/59828761/151083191-05c52c38-81d3-4fa3-81a3-694801f106c7.png)

## Rodando testes

Digite o comando `mix test` para ver os resultados dos testes.
