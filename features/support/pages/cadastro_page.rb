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

  def data
    find('#billing_first_name').set Faker::Name.name 
    find('#billing_last_name').set Faker::Name.name
    find('#billing_company').set Faker::Company.bs
    find('#billing_email').set Faker::Internet.email  
    find('#billing_phone').set Faker::Number.number(digits: 10)
    find('#billing_address_1').set Faker::Address.street_address
    find('#billing_city').set Faker::Address.city 
    find('#s2id_billing_state').click
    find('#s2id_autogen2_search').set 'Acre'
    find('.select2-match').click
    find('#billing_postcode').set '06852470'
    
  
  end

end
