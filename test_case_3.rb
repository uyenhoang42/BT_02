require 'webdrivers'
driver = Selenium::WebDriver.for :firefox

begin
  # Open this URL
  driver.navigate.to 'https://google.com'
  # Maximize or set size of browser window
  driver.manage.window.maximize
  # Get Title of page and print it
  title = driver.title
  puts title
  sleep 2
ensure
  driver.quit
end