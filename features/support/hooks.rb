# require 'report_builder'

Before do
    @cadastro = CadastroPage.new
    @login = LoginPage.new
    @shop = ShopPage.new
    page.current_window.resize_to(1920, 1080)    
end


# After do |scenario|
#     nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/,' ')
#     screenshot = "log/screenshots/#{nome_cenario}.png"
#     page.save_screenshot(screenshot)
#     attach(screenshot,'image/png')

# end

# at_exit do   
#   ReportBuilder.configure do |config|
#      config.input_path = 'log/report.json'
#      config.report_path = 'log/report'
#      config.report_types = [:retry, :html]
#      config.report_title = 'Evidências dos testes'
#      config.compress_image = true
#      config.additional_info = {"app" => "web livros","Data de execução" => "20/10/2020"}
#    end
#  ReportBuilder.build_report
# end


