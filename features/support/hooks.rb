
After do 
  Capybara.current_session.driver.quit
end


Before '@maximize' do
page.driver.browser.manage.window.maximize
end

Before '@TestingAvailableV' do
visit('https://testing-start.web.app/login')
fill_in 'email', :with => ENV['USERV']
fill_in 'password', :with => ENV['PSW']
xpath_Ini = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
find(:xpath, xpath_Ini).click
sleep 3
visit('https://testing-start.web.app/cuenta')
sleep 3
texto = find(:xpath, '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]').text
if (texto == "No disponible")
  xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label'
  find(:xpath, xpath).click
end
xpath_Exit = '/html/body/div/div[2]/header/div[1]/div[3]/div/div'
find(:xpath, xpath_Exit).click
xpath_logout = '/html/body/div[2]/div/button'
find(:xpath, xpath_logout).click
end

Before '@TestingNotAvailableV' do
visit('https://testing-start.web.app/login')
fill_in 'email', :with => ENV['USERV']
fill_in 'password', :with => ENV['PSW']
xpath_Ini = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
find(:xpath, xpath_Ini).click
sleep 3
visit('https://testing-start.web.app/cuenta')
sleep 3
texto = find(:xpath, '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]').text
if (texto == "Estoy disponible")
  xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label'
  find(:xpath, xpath).click
end
xpath_Exit = '/html/body/div/div[2]/header/div[1]/div[3]/div/div'
find(:xpath, xpath_Exit).click
xpath_logout = '/html/body/div[2]/div/button'
find(:xpath, xpath_logout).click
end

Before '@TestingAvailableL' do
visit('https://testing-start.web.app/login')
fill_in 'email', :with => ENV['USERL']
fill_in 'password', :with => ENV['PSW']
xpath_Ini = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
find(:xpath, xpath_Ini).click
sleep 3
visit('https://testing-start.web.app/cuenta')
sleep 3
texto = find(:xpath, '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]').text
if (texto == "No disponible")
  xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label'
  find(:xpath, xpath).click
end
xpath_Exit = '/html/body/div/div[2]/header/div[1]/div[3]/div/div'
find(:xpath, xpath_Exit).click
xpath_logout = '/html/body/div[2]/div/button'
find(:xpath, xpath_logout).click
end

Before '@TestingAvailableL' do
visit('https://testing-start.web.app/login')
fill_in 'email', :with => ENV['USERV']
fill_in 'password', :with => ENV['PSW']
xpath_Ini = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
find(:xpath, xpath_Ini).click
sleep 3
visit('https://testing-start.web.app/cuenta')
sleep 3
texto = find(:xpath, '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]').text
if (texto == "Estoy disponible")
  xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label'
  find(:xpath, xpath).click
end
xpath_Exit = '/html/body/div/div[2]/header/div[1]/div[3]/div/div'
find(:xpath, xpath_Exit).click
xpath_logout = '/html/body/div[2]/div/button'
find(:xpath, xpath_logout).click
end

Before '@TestingAvailableC' do
visit('https://testing-start.web.app/login')
fill_in 'email', :with => ENV['USERV']
fill_in 'password', :with => ENV['PSW']
xpath_Ini = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
find(:xpath, xpath_Ini).click
sleep 3
visit('https://testing-start.web.app/cuenta')
sleep 3
texto = find(:xpath, '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]').text
if (texto == "No disponible")
  xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label'
  find(:xpath, xpath).click
end
xpath_Exit = '/html/body/div/div[2]/header/div[1]/div[3]/div/div'
find(:xpath, xpath_Exit).click
xpath_logout = '/html/body/div[2]/div/button'
find(:xpath, xpath_logout).click
end

Before '@TestingAvailableC' do
visit('https://testing-start.web.app/login')
fill_in 'email', :with => ENV['USERV']
fill_in 'password', :with => ENV['PSW']
xpath_Ini = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
find(:xpath, xpath_Ini).click
sleep 3
visit('https://testing-start.web.app/cuenta')
sleep 3
texto = find(:xpath, '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]').text
if (texto == "Estoy disponible")
  xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label'
  find(:xpath, xpath).click
end
xpath_Exit = '/html/body/div/div[2]/header/div[1]/div[3]/div/div'
find(:xpath, xpath_Exit).click
xpath_logout = '/html/body/div[2]/div/button'
find(:xpath, xpath_logout).click
end
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
