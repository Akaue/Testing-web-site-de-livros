require "report_builder"
require "date"

Before do
    @cadastro = CadastroPage.new
    @login = LoginPage.new
    @shop = ShopPage.new

  page.current_window.resize_to(1350, 700)
    
end


After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/,' ')
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    attach(screenshot,'image/png')

end


# at_exit do   
#     ReportBuilder.configure do |config|
#        config.input_path = "log/reporta.json"
#        config.report_path = "log/report" 
#        config.report_types = [:html]
#        config.report_title = "Evidências do teste"
#        config.compress_image = true
#        config.additional_info = {"App" => "Web Livros","Data de execução" => "23/10/2020" }
#      end
 
#    ReportBuilder.build_report
#  end
