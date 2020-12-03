require 'webdrivers'
driver = Selenium::WebDriver.for :firefox

begin
  # Open this URL
  driver.navigate.to 'https://google.com'
  # Maximize or set size of browser window
  driver.manage.window.maximize
  # Get Page source and print it 
  page_source = driver.page_source
  puts page_source
  sleep 2
ensure
  driver.quit
end 