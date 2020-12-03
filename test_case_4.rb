require 'webdrivers'
driver = Selenium::WebDriver.for :firefox

begin
  # Open this URL
  driver.navigate.to 'https://google.com'
  # Maximize or set size of browser window
  driver.manage.window.maximize
  # Get URL of current page and print it
  driver.current_url
  current_url = driver.current_url
  puts current_url
  sleep 2
ensure
  driver.quit
end 