class ShopPage
  include Capybara::DSL

  def livro_android
   find(:xpath,'//*[@id="content"]/ul/li[1]').text
  end

  def add_cesta
   find(:xpath,'//*[@id="content"]/ul/li[1]/a[2]').click
  end

  def add_cesta2
  find(:xpath,'//*[@id="content"]/ul/li[2]/a[2]').click
  end
 
  def carrinho
   find('.wpmenucart-contents').click
  end

  def itens_carrinho
    find('.cart_item').text 
  end
  
  def place_order
   find('#place_order').click
  end
  
  def final_compra
   find('.woocommerce-thankyou-order-received').text
  end

end