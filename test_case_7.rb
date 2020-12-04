require 'webdrivers'
driver = Selenium::WebDriver.for :firefox

begin
  # Open this URL
  driver.get 'https://itmscoaching.herokuapp.com/form'
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
  checkbox = driver.find_element(id: "radio-button-2")
  checkbox.click
  # 5. Sex: Male
  checkbox = driver.find_element(id: "checkbox-1")
  checkbox.click
  # 6. Year of experience: 2-4
  options = driver.find_element(id:  "select-menu")
  selectmenu = Selenium::WebDriver::Support::Select.new(options)
  selectmenu.select_by(:value, "2")
  # 7. Date: 27/10/2025
  datepicker = driver.find_element(id: 'datepicker') 
  datepicker.send_keys ("27/10/2025")
  sleep 2
  # 8. Click Submit
  submit = driver.find_element(xpath: "//a[contains(text(),'Submit')]")
  submit.click
  sleep 5
ensure
  driver.quit
end 
