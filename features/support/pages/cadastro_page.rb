require 'faker'

class CadastroPage
    include Capybara::DSL

 
  def registrar
   click_link 'My Account'
   find('#reg_email').set Faker::Internet.email  
   find('#reg_password').set "TeStE21!lLoS9im"
   find(:xpath,'//*[@id="customer_login"]/div[2]/form/p[3]/input[3]').click
  end
  
  def registro_existente
    click_link 'My Account'
    find('#reg_email').set "akaueteste@teste.com"
    find('#reg_password').set "TeStE21!lLoS9im"
    find(:xpath,'//*[@id="customer_login"]/div[2]/form/p[3]/input[3]').click
  end

  def registro_fraco
    click_link 'My Account'
    find('#reg_email').set "akaueteste@teste.com"
    find('#reg_password').set "123"
    find(:xpath,'//*[@id="customer_login"]/div[2]/form/p[3]/input[3]').click

  end
 
  def message_register 
    find('.woocommerce-MyAccount-content').text
  end


  def message_error
  find('.woocommerce-error').text
  end

  def message_weak
  find('.woocommerce-password-strength.short').text
  end

end
