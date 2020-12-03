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
  # 4. Highest level of education: College
  checkbox = driver.find_element(id: "div.container form:nth-child(4) div.form-group div.input-group:nth-child(7) > div.col-sm-8.col-sm-offset-2:nth-child(3)")
  checkbox.click
  # 5. Sex: Male
  checkbox = driver.find_element(id: "div.container form:nth-child(4) div.form-group div.input-group:nth-child(9) > div.col-sm-8.col-sm-offset-2:nth-child(2)")
  checkbox.click
  # 6. Year of experience: 2-4
  options = driver.find_element(:id, "select-menu")
  select_object = Selenium::WebDriver::Support::Select.new(options)
  select_object.select_by(:value, "2")
  # 7. Date: 27/10/2025
  search_box = driver.find_element(:id, 'datepicker') 
  search_box.send_keys ("27/10/2025")
  sleep 5
ensure
  driver.quit
end 
