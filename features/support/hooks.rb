
Before do
    @cadastro = CadastroPage.new
    @login = LoginPage.new
    @shop = ShopPage.new
    page.current_window.resize_to(1700, 900)    
end


After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/,' ')
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    attach(screenshot,'image/png')

end

