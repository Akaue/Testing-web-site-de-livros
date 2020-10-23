Dado('que estou logado na pagina de exibição de livros') do
    @login.visitar
    @login.logar
    click_link 'Shop'
end

Quando('eu escolho o livro {string} e adiciono no carrinho') do |livro|
    expect(page).to have_content livro
    @shop.add_cesta
    @shop.carrinho
end

Quando('eu escolho um livro {string} e adiciono no carrinho') do |livro|
    expect(page).to have_content livro
    @shop.add_cesta2
    @shop.carrinho
end
  
  
Quando('vou para o carrinho de compras') do
    @shop.carrinho
    click_link 'Proceed to Checkout' 
end

Então('vou para o carrinho de compras e adiciono mais livros') do
  @shop.carrinho
  @shop.add
  @shop.update_basket
  click_link 'Proceed to Checkout' 
end
 
Então('preencho todos os dados e realizo a encomenda') do
  @cadastro.data
  expect(page).to have_content @shop.itens_carrinho
  @shop.place_order
end

  
Então('é apresentada a mensagem {string}') do |msg|
  mensagem = expect(@shop.final_compra).to have_content msg
  
end

