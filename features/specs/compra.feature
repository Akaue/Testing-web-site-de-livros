#language:pt

Funcionalidade: Comprando livros para estudar
  Eu sou uma pessoa curiosa, e desejo conhecer outras linguagens de programação
  sendo assim quero comprar alguns livros para estudo


@schema
Esquema do Cenário: Comprando livro
  Dado que estou logado na pagina de exibição de livros
  Quando eu escolho o livro <livro> e adiciono no carrinho
  Então vou para o carrinho de compras
  E preencho todos os dados e realizo a encomenda
  Então é apresentada a mensagem <mensagem>


 Exemplos:
| livro                       | mensagem                                 | 
| "Android Quick Start Guide" |"Thank you. Your order has been received."|
  
@test
Cenário: Comprando outro livro
  Dado que estou logado na pagina de exibição de livros
  Quando eu escolho um livro "Functional Programming in JS" e adiciono no carrinho
  Então vou para o carrinho de compras
  E preencho todos os dados e realizo a encomenda
  Então é apresentada a mensagem "Thank you. Your order has been received."


