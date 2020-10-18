
Dado('que estou no site de vendas de livros') do
    @login.visitar
end
  
Dado('realizo meu cadastro') do    
    @cadastro.registrar  
end
  
Então('devo receber mensagem Hello') do 
    expect(page).to have_content @cadastro.message_register 
end
  
Quando('insiro dados de cadastro existente') do
    @cadastro.registro_existente
end
  
Então('vejo a mensagem {string}') do |expect_message|
    expect(@cadastro.message_error).to eql expect_message    
end
  
Dado('insiro meu email e senha fraca') do
    @cadastro.registro_fraco  
end
  
Então('a mensagem {string} é visualizada') do |expect_weak|
    expect(@cadastro.message_weak).to eql expect_weak    
end

