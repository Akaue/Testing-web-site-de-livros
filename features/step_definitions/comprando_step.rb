Dado('que estou logado na pagina de exibição de livros') do
    @login.visitar
    @login.logar
    click_link 'Shop'
end
  
Quando('eu escolho o livro {string} e adiciono no carrinho') do |livro|
    expect(@shop.livro_android).to have_content livro
    @shop.add_cesta
    @shop.carrinho
end
  
Então('vou para o carrinho de compras') do
    @shop.carrinho
    click_link 'Proceed to Checkout' 
end
  
Então('preencho todos os dados e realizo a encomenda') do
  log 'testando'
end
  
