class ShopPage
    include Capybara::DSL

  def livro_android
   find(:xpath,'//*[@id="content"]/ul/li[1]').text
  end

  def add_cesta
   find(:xpath,'//*[@id="content"]/ul/li[1]/a[2]').click
  end
 
   def carrinho
   find('.wpmenucart-contents').click
   end


end