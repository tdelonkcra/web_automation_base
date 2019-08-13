require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'webdrivers'
require 'selenium-webdriver'
require 'site_prism'

Capybara.register_driver :default_headless do |app|
  Capybara::Selenium::Driver.load_selenium

  options = ::Selenium::WebDriver::Chrome::Options.new
  options.args << '--disable-dev-shm-usage'
  options.args << '--disable-gpu'
  options.args << '--headless'
  options.args << '--no-sandbox'

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.automatic_label_click = true
Capybara.default_driver = :default_headless
Capybara.enable_aria_label = true
Capybara.save_path = 'tmp/'

Before('@Search') do
  Capybara.app_host = 'https://www.google.com'
  Capybara.default_max_wait_time = 5
  @app = Google.new
end

After do |scenario|
  if scenario.failed?
    timestamp = Time.now.strftime('%Y-%m-%d-%I-%M-%S')
    filename = "#{timestamp}-#{scenario.name}.png"
    page.save_screenshot(filename)
  end
end
