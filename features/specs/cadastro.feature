#language:pt

Funcionalidade: Criar conta  no site de venda de livros
 Eu  quero comprar meus livros para estudar, sendo assim necessito de uma conta 

Cenário: Criando conta
Dado que estou no site de vendas de livros
E realizo meu cadastro
Então devo receber mensagem Hello

Cenário: Criando conta existente
Dado que estou no site de vendas de livros
Quando insiro dados de cadastro existente
Então vejo a mensagem "Error: An account is already registered with your email address. Please login."

Cenário: Criando conta com senha fraca
Dado que estou no site de vendas de livros
E insiro meu email e senha fraca
Então  a mensagem "Very weak - Please enter a stronger password." é visualizada