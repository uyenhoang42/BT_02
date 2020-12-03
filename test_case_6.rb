require 'webdrivers'
driver = Selenium::WebDriver.for :firefox

begin
  # Open this URL
  driver.navigate.to 'https://google.com'
  # Maximize or set size of browser window
  driver.manage.window.maximize
  # Search with ‘iTMS Coaching’ word
  search_box = driver.find_element(:name, 'q') 
  search_box.send_keys ("iTMS Coaching")
  search_box.send_keys(:enter)
  # Get Page title and print it
  title = driver.title
  puts title
  sleep 5
ensure
  driver.quit
end 