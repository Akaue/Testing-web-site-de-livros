
Dado('que estou no site de vendas de livros') do
    @login.visitar
end
  
Dado('realizo meu cadastro') do
    
    @cadastro.registrar
    sleep 2
    
end
  
Então('devo receber mensagem Hello') do 
    expect(page).to have_content @cadastro.message_register 
    sleep 2
end
  
Quando('insiro dados de cadastro existente') do
    @cadastro.registro_existente
    sleep 2
end
  
Então('vejo a mensagem {string}') do |expect_message|
    expect(@cadastro.message_error).to eql expect_message
    sleep 2
end
  
Dado('insiro meu email e senha fraca') do
    @cadastro.registro_fraco
    sleep 2
end
  
Então('a mensagem {string} é visualizada') do |expect_weak|
    expect(@cadastro.message_weak).to eql expect_weak
    sleep 2
end

