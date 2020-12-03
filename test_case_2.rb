require 'webdrivers'
driver = Selenium::WebDriver.for :firefox

begin
  # Open this URL
  driver.navigate.to 'https://google.com'
  # Maximize or set size of browser window
  driver.manage.window.maximize
  sleep 5
ensure
  driver.quit
end