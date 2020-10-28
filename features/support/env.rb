require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--headless"
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-site-isolation-trials"
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome_headless
else
  puts "Invalid browser"
end


Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = "http://practice.automationtesting.in/"
  config.default_max_wait_time = 15
end

