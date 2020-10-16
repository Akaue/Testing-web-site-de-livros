require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome,timeout: 30)
end


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://practice.automationtesting.in/"
  config.default_max_wait_time = 10
end
