require "report_builder"
require "date"

Before do
    @cadastro = CadastroPage.new
    @login = LoginPage.new
    @shop = ShopPage.new
    
end


After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/,' ')
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    attach(screenshot,'image/png')

end

date = DateTime.now
@current_date = date.to_s.tr(":","-")

at_exit do   
    ReportBuilder.configure do |config|
       config.input_path = "log/report.json"
       config.report_path = "log" + @current_date
       config.report_types = [:retry, :html]
       config.report_title = 'Evidências do teste'
       config.compress_image = true
       config.additional_info = {"App" => "Web Livros","Data de execução" => @current_date}
     end
 
   ReportBuilder.build_report
 end
