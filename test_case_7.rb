require 'webdrivers'
driver = Selenium::WebDriver.for :firefox

begin
  # Open this URL
  driver.navigate.to 'https://itmscoaching.herokuapp.com/form'
  # Maximize or set size of browser window
  driver.manage.window.maximize
  sleep 2
  # Enter the form with following data:
  # 1. First name: iTMS
  firstname = driver.find_element(id: "first-name")
  firstname.send_keys 'iTMS'
  # 2. Last name: Coaching
  lastname = driver.find_element(id: "last-name")
  lastname.send_keys 'Coaching'
  # 3. Job Title: QA
  jobtitle = driver.find_element(id: "job-title")
  jobtitle.send_keys 'QA'
  sleep 2
ensure
  driver.quit
end 