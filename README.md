# README

Neste projeto, criei em ruby uma API onde se pode manipular através de um CRUD, produtos
de um mercado. 

# SETUP
é necessário ter um ambiente ruby (e rails) instalado para fazer as requisições localmente;

Para se ter alguns dados já cadastrados na nossa única tabela (produtos), é necessário rodar o comando seeds:

`rake db:create
rake db:migrate
rake db:seed`

Esses três comandos irão criar um banco postgres (necessário ter instalado), criar a tabela produtos e popular a tabela com dois produtos;


Para futuras interações, é necessário subir a aplicação através do comando abaixo:

`rails s`

com isso, com o Postman, podemos fazer algumas interações com nossa tabela. Para o nosso estudo,
vamos fazer duas consultas: Uma geral e uma avançada;

# BUBBLE SORT

Aproveitando a estrutura montanda nessa API, vamos usar de alguns comandos dentro do console do rails, para realizar as atividades propostas sobre algorítimos de ordenação e busca, começando pelo de ordenação:

---
Acesse o console:
`rails c`

Agora, vamos pegar a lista de todos os itens da nossa tabela _produtos_:
`products = Produto.all.to_a`

Em seguida, vamos criar nosso método de ordenação. Escolhi o _bubble sort_:

`def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i].created_at > array[i+1].created_at
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  return array
end`

Aqui, nosso método ordena os produtos a partir da sua data de criação(inserção no banco). Ele naturalmente vem ordenado por data de criação, então para pormos em prova a qualidade da nossa função, podemos alterar a ordem da lista que passamos como parametro na função:

`reversed_products = products.reverse`

`sorted_products = bubble_sort(reversed_products)`

Note que o resultado da função é nossa lista ordenada!

# BUSCA LINEAR

Aqui iremos realizar uma busca linear na nossa lista ordenada, utilizando o nome do produto como parametro:

---

Primeiro iremos definir nossa função de busca linear:

`def linear_search(products, search_query)
  indexes = []
  products.map do |product|
    if product.attributes["nome"] == search_query
      indexes << product.id-1
      puts "#{search_query} foi achado no índice #{product.id-1}."
    end
  end
  puts "#{search_query} não foi encontrado no banco de dados." if indexes == []
  indexes
end`

Nesta função, estamos basicamente percorrendo nossa lista ordenada, em busca de um item com o nome correspondente a nossa variável _search_query_. 

Se utilizarmos os itens presentes no arquivo _seeds.rb_, poderemos encontrar o produto "Arroz", por exemplo:

`search_query = 'Arroz'
linear_search(sorted_products, search_query)`

Aqui devemos ter 2 prints mostrando o índice que cada produto está dentro da lista ordenada, e um array com os índices

Para printar a segunda mensagem, basta mudarmos o valor da variável _search_query_:

`search_query = 'Banana'
index = linear_search(sorted_products, search_query)`
