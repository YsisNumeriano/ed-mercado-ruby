# README

Neste projeto, criei em ruby uma API onde se pode manipular através de um CRUD, produtos
de um mercado. 

# SETUP
é necessário ter um ambiente ruby (e rails) instalado para fazer as requisições localmente;

Para se ter alguns dados já cadastrados na nossa única tabela (produtos), é necessário rodar o comando seeds:

rake db:create
rake db:migrate
rake db:seed

Esses três comandos irão criar um banco postgres (necessário ter instalado), criar a tabela produtos e popular a tabela com dois produtos;


Para futuras interações, é necessário subir a aplicação através do comando abaixo:

rails s

com isso, com o Postman, podemos fazer algumas interações com nossa tabela. Para o nosso estudo,
vamos fazer duas consultas: Uma geral e uma avançada;

# GERAL
Irá mostrar a lista de todos os produtos cadastrados:

GET - localhost:3000/produtos

Isso deve nos mostrar a lista com todos os produtos cadastrados (gerados no arquivo seeds.rb)

# AVANÇADA
Aqui iremos mostrar um produto em específico, usando o seu ID como filtro na url:

GET - localhost:3000/produtos/2

Essa requisição irá nos mostrar apenas o produto da tabela com id 2;