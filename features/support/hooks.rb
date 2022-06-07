
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
Before '@CreateEventos' do
  visit('https://testing-start.web.app/login')
  fill_in 'email', :with => ENV['USERL']
  fill_in 'password', :with => ENV['PSW']
  xpath_Ini = '/html/body/div[1]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button/span[1]'
  find(:xpath, xpath_Ini).click
  xpath_Eventos = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
  find(:xpath, xpath_Eventos).click
  crearEvento = '/html/body/div[1]/div[2]/div[1]/div/div[1]/div[1]/div[3]/div[2]/button[1]'
  find(:xpath, crearEvento).click
  fill_in 'nombre_evento', :with => "Evento Automatizado2"
	fill_in 'descripcion_evento', :with => "Descripcion Evento Automatizado2"
	select("Lider Lider", :from => 'lider')
	select("Virtual", :from => 'modalidad_evento')
	fill_in 'lugar_evento', :with => "LPZ"
  fill_in 'fecha_evento', :with => "12/08/2022"	
	css_save ='#ModalFormCrearEvento > div > form > div.CamposBotones > button.botonCrear.btn.btn-secondary'
  find(:css, css_save).click
  sleep (1)
  xpath_Exit = '/html/body/div/div[2]/header/div[1]/div[3]/div/div'
  find(:xpath, xpath_Exit).click
  xpath_logout = '/html/body/div[2]/div/button'
  find(:xpath, xpath_logout).click
  visit('https://testing-start.web.app/')
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

After '@ParticiparEvento' do
  xpath_part= '//*[@id="root"]/div[2]/div[1]/div/div[1]/div[2]/div[11]/div/div[2]/div/button[1]'
  find(:xpath, xpath_part).click
end