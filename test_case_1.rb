require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

begin
  # Open this URL
  driver.navigate.to 'https://google.com'
  sleep 2
ensure
  driver.quit
end
