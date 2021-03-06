
# Given(/^I click the "([^"]*)" link$/) do |linkText|
# click_link(linkText)
# end

When(/^I press the proyectos icon$/) do
    xpath = '/html/body/div/div[2]/div[2]/div/button[2]'
    find(:xpath, xpath).click
end


When(/^I press the CREAR PROYECTO button$/) do
    xpath = '/html/body/div/div[2]/div[1]/div/div[1]/div/div[2]/button'
    find(:xpath, xpath).click
end


When(/^I fill the fields of the project form with the following data$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
   case key
   when "Fecha de inicio:"
        fill_in 'fecha_inicio', :with => value
        # @nameEvento = value
   when "Fecha de fin:"
       fill_in 'fecha_fin', :with => value
    when "Nombre del proyecto:"
        fill_in 'titulo', :with => value
    when "Descripcion:"
        fill_in 'descripcion', :with => value       
   end
 end
end


When(/^I press the "([^"]*)" project button$/) do |buttonName|
    if(buttonName == "CREAR PROYECTO")
        xpath = find('form')
        xpath.click_button("crearProyecto1")
        # xpath='/html/body/div[2]/div[3]/form/div[2]/div[11]'
        # find(:xpath, xpath).click
        sleep(1)
    elsif (buttonName == "MEDIO AMBIENTE")
        xpath='//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[1]/div'
        find(:xpath, xpath).click
        sleep(1) 
    end
  
end



When(/^I click on the button "([^"]*)" of the project "([^"]*)"$/) do |button_name, project_name|
    cont = 0
    size = page.all(:css, '.MuiPaper-root MuiCard-root jss573 MuiPaper-elevation1 MuiPaper-rounded').size
    while cont < size
    if page.all(:css, '.MuiPaper-root MuiCard-root jss573 MuiPaper-elevation1 MuiPaper-rounded')[cont].text.include? project_name
        page.all(:css, '.MuiPaper-root MuiCard-root jss573 MuiPaper-elevation1 MuiPaper-rounded')[cont].click_button(button_name)
        sleep(1)
        cont = size
        else
        cont = cont + 1
        end
    end
end

Then('I should see the alert {string} on the screen') do |string|
    # xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[103]/div[2]/div[4]/div/div/div[2]'
    expect(page).to have_content('Ver detalles')
end

#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiBox-root.jss571 > div > div:nth-child(103) > div.MuiBox-root.jss784 > div:nth-child(4) > div > div > div.MuiAlert-message

Then('I should not see the project {string} in the list of projects') do |string|
    sleep 2
    expect(page).not_to have_content(string)
  end
  
  Then('I should see the project {string} in the list of projects') do |string|
    sleep 2
    expect(page).to have_content(string)
  end

Then('I press the MEDIO AMBIENTE button') do
    sleep 2 
    xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[1]/div/div/a/button'
    find(:xpath, xpath).click
end

Then(/^I should see the form to create a project$/) do
    formTittle = 'Crear Proyecto'
    find(:xpath, '/html/body/div[2]/div[3]/form/div[1]/h4', :text => formTittle)
end


Then(/^I should be able to see the active projects list$/) do
    sleep 2
    expect(page).to have_content('Proyectos Medio Ambiente')
end

Then(/^I should be able to see the past projects list$/) do
    sleep 2
    expect(page).to have_content('Proyectos Pasados')
end
