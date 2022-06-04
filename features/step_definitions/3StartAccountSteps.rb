
Given(/^I am on the Start Americas loginpage$/) do
    page.driver.browser.manage.window.maximize
    visit ('https://testing-start.web.app/login')
end

When(/^I press the "([^"]*)" button on the table$/) do |arg1|
    if(arg1 == "Tus eventos")
        css = '#scrollable-auto-tab-0'
    elsif (arg1 == "Tus proyectos")
        css = '#scrollable-auto-tab-1'
    elsif (arg1 == "Tus logros")
        css = '#scrollable-auto-tab-2'
    end 
    find(:css, css).click
end

#When I search for "houston dynamo tickets"
When(/^I search for "([^"]*)"$/) do |valueToSearch|
    fill_in('q',:with => valueToSearch).native.send_keys(:return)
end

When(/^I press the "([^"]*)" blue button$/) do |arg1|
    xpath = '/html/body/div[1]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
    find(:xpath, xpath).click
end

When(/^I press the edit button$/) do
    xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[2]'
    find(:xpath, xpath).click
end

When(/^I press the proyects icon$/) do
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[2]'
    find(:xpath, xpath).click
end

When(/^I press the events icon$/) do
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
    find(:xpath, xpath).click
end

When(/^I press the account icon$/) do
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[4]'
    find(:xpath, xpath).click
end

Then('I will see a button with the text {string}') do |string|
    expect(page).to have_content(string)
end

Then('I will see a table to edit the profile') do
    xpath = '/html/body/div[2]/div[3]/div[1]'
    find(:xpath, xpath)
end

Then('I will see my profile picture') do
    find(:xpath ,'/html/body/div[1]/div[2]/div[1]/div/div/div/div[1]/div[1]/span/div/img')
end

Then('I will see my {string} name') do |arg1|
    xpath = '/html/body/div[1]/div[2]/div[1]/div/div/div/div[1]/div[2]/div[1]/h6'
    if(arg1 == "volunteer")
        name = "Voluntario"
    elsif(arg1 == "leader")
        name = "Lider"
    elsif(arg1 == "coreteam")
        name = "Core"
    end
    expect(page).to have_content(name)
end

Then('I will see my {string} lastname') do |arg1|
    xpath = '/html/body/div[1]/div[2]/div[1]/div/div/div/div[1]/div[2]/div[1]/h6'
    if(arg1 == "volunteer")
        apellido = "Voluntario"
    elsif(arg1 == "leader")
        apellido = "Lider"
    elsif(arg1 == "coreteam")
        apellido = "Team"
    end
    expect(page).to have_content(apellido)
end

Then('I will see my state as {string}') do |string|
    xpath = '/html/body/div[1]/div[2]/div[1]/div/div/div/div[1]/div[1]/span/span'
    if (string == "Estoy disponible")
        clase = ".MuiBadge-colorSecondary"
    else
        clase = ".MuiBadge-colorPrimary"
    end
    expect(page).to have_css(clase)
end

Then('I will see a list of my {string}') do |string|
    
    if (string == "events")
        css = '#scrollable-auto-tabpane-0'
    elsif (string == "proyects")
        css = '#scrollable-auto-tabpane-1'
    elsif (string == "achievements")
        css = '#scrollable-auto-tabpane-2'
    end
    find(:css, css)
end

Then('I wont see a list of my {string}') do |string|
    
    if (string == "events")
        css = '#scrollable-auto-tabpane-1'
    elsif (string == "proyects")
        css = '#scrollable-auto-tabpane-2'
    elsif (string == "achievements")
        css = '#scrollable-auto-tabpane-0'
    end
    find(:css, css)
end

When('I try to press a {string} of the list') do |string|
    sleep 1
    if (string == "event")
        xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[3]/div/div/div[1]/div/span/div/div[2]/div[1]'
        xpath_List = '/html/body/div/div[2]/div[1]/div/div/div/div[3]/div/div/div[1]/div/span/div/div[2]'
        text = 'Aún no te has registrado a ningún evento. Una vez te hayas registrado a alguno de nuestros eventos, aparecerán en tu página de inicio.
EXPLORAR EVENTOS'
    elsif (string == "proyect")
        xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[3]/div/div/div[2]/div/span/div/div[2]/div[1]'
        xpath_List = '/html/body/div/div[2]/div[1]/div/div/div/div[3]/div/div/div[2]/div/span/div/div[2]'
        text = 'Aún no te has registrado a ningún proyecto. Una vez te hayas registrado a alguno de nuestros proyectos, aparecerán en tu página de inicio.
EXPLORAR PROYECTOS'
    end

    lista = find(:xpath, xpath_List).text
    puts text
    puts lista
    puts (lista == text)

    if (lista != text)
        puts "Buscando Evento o proyecto"
        find(:xpath, xpath).click
    end
    
    #find('#scrollable-auto-tabpane-0 > div > span > div > div.jss66 > div')
end

Then('I will see the details of the {string}') do |string|
    url = page.current_url
    puts url
    textLink = 'https://testing-start.web.app/cuenta'
    if(url != textLink)
        puts "Detalles..."
        if (string == "event")
            xpath = '/html/body/div/div[2]/div[1]/div/div[2]'
        elsif (string == "proyect")
            xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[2]' 
        end
        find(:xpath, xpath)
    end
end



When(/^I enter the required fields to edit the profile as show below$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
    when "Fecha de Nacimiento:"
        fill_in 'fecha_de_nacimiento', :with => value
    when "Ocupacion:"
        select(value, :from => 'ocupacion')
    when "Carrera:"
        fill_in 'carrera', :with => value
    when "Ciudad de Residencia:"
        fill_in 'ciudad_de_recidencia', :with => value
    when "Pais de Residencia:"
        fill_in 'pais_de_recidencia', :with => value
    when "Genero:"
        select(value, :from => 'genero')
    when "Nombre de Contacto de Emergencia:"
        fill_in 'nombre_contacto_de_emergencia', :with => value
    when "Relacion de Contacto de Emergencia:"
        fill_in 'relacion_contacto_de_emergencia', :with => value
    when "Numero de Contacto de Emergencia:"
        fill_in 'numero_contacto_de_emergencia', :with => value
    when "Descripcion Personal:"
        fill_in 'descripcion_personal', :with => value
    end
end
end
  
Then('I will see an alert with the text {string}') do |string|
    sleep 1
    find('div > div > div.MuiAlert-message')
    #expect(page).to have_content(string)
end

When(/^I save the changes$/) do
    xpath = '/html/body/div[2]/div[3]/div[2]/button'
    find(:xpath, xpath).click
end


When('I change the state of the user') do
    sleep 1
    xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label'
    find(:xpath, xpath).click
  end
  
Then('I see the text of the state change to {string}') do |string|
    sleep 1
    expect(page).to have_content(string)
end

Then('I see the circle next to profiles image change to green') do
    clase = ".MuiBadge-colorSecondary"
    expect(page).to have_css(clase)
end

Then('I see the circle next to profiles image change to blue') do
    clase = ".MuiBadge-colorPrimary"
    expect(page).to have_css(clase)
end