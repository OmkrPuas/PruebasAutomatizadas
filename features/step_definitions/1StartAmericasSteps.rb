Given(/^I am on the Start Americas homepage$/) do
     page.driver.browser.manage.window.maximize
     visit('https://testing-start.web.app')

end

Given(/^I click the "([^"]*)" link$/) do |linkText|
  click_link(linkText)
end

When(/^I enter the required fields as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Nombre:"
    	fill_in 'username', :with => value
    	@name = value
	when "Apellido:"
		fill_in 'lastname', :with => value
  when "Email:"
		fill_in 'email', :with => value
    @correo = value
  when "Phone:"
		fill_in 'phone', :with => value
	when "Password:"
		fill_in 'password', :with => value
	when "Confirm Password:"
		fill_in 'confirmPassword', :with => value
		@password = value
	end
  end
end

When(/^send my registration form$/) do
  xpath_base = '//*[@id="root"]/div[2]/div[1]/div/div/div[2]/div[3]/form/div[7]/button/span[1]'
  find(:xpath, xpath_base).click
end

Then(/^the denegation alert is show$/) do
  alert = "El correo: "+@correo+" ya fue registrado"
  expect(page).to have_content(alert)
  
end
Then(/^Goes to Login page$/) do
  labelText = find(:xpath,'//*[@id="root"]/div[2]/div[1]/div/div/div[2]/div[1]/h2').text
  if (labelText == 'Crea Tu Cuenta')
    puts "Validation for Registration: Passed"
  else
    raise "Validation for Registration: Failed"    
    puts "Expected: Login Page"
    puts "Actual: Register Page"
  
  end
end
Then(/^Navigates to "([^"]*)" page$/) do|option|
  puts option
  
  if (option == 'Proyectos')
    visit('https://testing-start.web.app/projects/categories')
  elsif (option == 'Eventos')
    visit('https://testing-start.web.app/eventos')
  elsif (option == 'Cuenta')
    visit('https://testing-start.web.app/cuenta')
  elsif (option == 'Usuarios')
    visit('https://testing-start.web.app/users')
    
  end
end


Given(/^I enter my "([^"]*)" user and password$/) do |arg1|
  if(arg1 == "volunteer")
    fill_in 'email', :with => ENV['USERV']
  elsif(arg1 == "leader")
    fill_in 'email', :with => ENV['USERL']
  elsif(arg1 == "coreteam")
    fill_in 'email', :with => ENV['USERC']
  end
  fill_in 'password', :with => ENV['PSW']
  
end



When(/^I press the "([^"]*)" button$/) do |arg1|
  puts arg1
  if(arg1 == "Iniciar Sesión")
    xpath = '//*[@id="root"]/div[2]/header/div[1]/div[3]/button/span[1]'
  elsif(arg1 == "Unete a Start")
    xpath = '//*[@id="root"]/div[2]/div[1]/section/div[1]/div/div[2]/button[1]/span[1]'
  elsif(arg1 == "Proyectos")
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[2]/span/span'
  elsif(arg1 == "Eventos")
    xpath = '//*[@id="root"]/div[2]/header/div[2]/div/button[3]'
  elsif(arg1 == "Cuenta")
    xpath = '//*[@id="root"]/div[2]/header/div[2]/div/button[4]'
  elsif(arg1 == "Usuarios")
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[5]'
  end
  
  find(:xpath, xpath).click
end


Then(/^The loged home page is displayed$/) do
    expect(page).to have_content("Tus Próximos Eventos")
    puts find(:xpath,'//*[@id="root"]/div[2]/div[1]/section/div[1]/div[1]/h2').text
end

Then(/^The "([^"]*)" page is displayed$/) do|arg1|
  puts arg1
  if(arg1 == "Proyectos")
    expect(page).to have_content("MEDIO AMBIENTE")
  elsif(arg1 == "Eventos")
    expect(page).to have_content("EVENTOS VIGENTES")
  elsif(arg1 == "Cuenta")
    expect(page).to have_content("Estoy disponible")
  end
end

When(/^I press the Login button$/) do
  xpath = '/html/body/div[1]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button/span[1]'
  find(:xpath, xpath).click
end
