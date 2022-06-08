require './features/pages/EventsPage.rb'
$events = -1
$currentevent
$request = -1

Then(/^I should see the "([^"]*)" content$/) do |content|
    $events = EventsPage.new(page)
    request = $events.existing_content(content)
    expect(request).to be true
end

Then(/^I press the Crear Evento button$/) do 
    $events = EventsPage.new(page)
    request = $events.push_crear_evento()
end
Then(/^The "([^"]*)" form shows the tittle form$/) do |optionform|
    puts optionform
    if(optionform == "Crear Evento")
        find(:xpath, '//*[@id="ModalFormCrearEvento"]/div/div/strong', :text => optionform)
    elsif (optionform == "Editar Evento")
        find(:xpath, '//*[@id="ModalFormCrearEvento"]/div/div/strong', :text => optionform)
        sleep(3)
    end
end
When(/^I enter the required event fields as show below$/) do |table|
     data = table.rows_hash
     data.each_pair do |key, value|
    case key
	when "Nombre Evento:"
    	fill_in 'nombre_evento', :with => value
    	@nameEvento = value
	when "Descripcion:"
		fill_in 'descripcion_evento', :with => value
     when "Lider:"
		select(value, :from => 'lider')
    when "Modalidad:"
		select(value, :from => 'modalidad_evento')
	when "Lugar:"
		fill_in 'lugar_evento', :with => value
     when "Hora inicio:"
		fill_in 'hora_inicio', :with => value
     when "Categoria:"
		select(value, :from => 'categoria')
     when "Proyecto:"
		select(value, :from =>  'proyecto')
     when "Hora inicio:"
		fill_in 'hora_inicio', :with => value
     when "Hora fin:"
		fill_in 'hora_fin', :with => value
	when "Fecha:"
		fill_in 'fecha_evento', :with => value	
	end
  end
end


When(/^Press the "([^"]*)" button of card "([^"]*)"$/) do |buttonName, eventName|
    action=buttonName +"_"+ eventName
    click_button(action)
    $currentevent=eventName
    sleep(1)
end
When(/^The "([^"]*)" button of card "([^"]*)" is show$/) do |buttonName, eventName|
    namebuttonPage = (buttonName +"_"+ eventName)
    click_button(namebuttonPage)
    sleep(1)
    if(buttonName == "DejarParticipar")
        puts "Validation for Participar: Passed"
    else
        raise "Validation for Participar: Failed"    
    sleep(1)
    end
end
When(/^Press the "([^"]*)" button$/) do |buttonName|
    if(buttonName == "Confirmar")
        deleteAction="eliminarevento" + $currentevent
        css='body > div.MuiModal-root.MuiDialog-root.css-126xj0f > div.MuiDialog-container.MuiDialog-scrollPaper.css-ekeie0 > div > div.MuiDialogActions-root.MuiDialogActions-spacing.css-14b29qc > button.MuiButton-root.MuiButton-contained.MuiButton-containedPrimary.MuiButton-sizeMedium.MuiButton-containedSizeMedium.MuiButtonBase-root.css-1hw9j7s'
        find(:css, css).click
        sleep(1)
    elsif (buttonName == "Guardar Evento")
        xpath='//*[@id="ModalFormCrearEvento"]/div/form/div[11]/button[1]'
        find(:xpath, xpath).click
        sleep(1)
    elsif (buttonName == "Editar")
        xpath='/html/body/div[1]/div[2]/div[1]/div/button'
        find(:xpath, xpath).click
        sleep(1)
    elsif (buttonName == "Crear Evento")
        css='#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(1)'
        find(:css, css).click
        sleep(1)
    elsif (buttonName == "Guardar Cambios")
        css=' #ModalFormEditEvento > div > form > div.CamposBotones > button.MuiButtonBase-root.MuiButton-root.MuiButton-text.botonActualizar'
        find(:css, css).click
        sleep(1)
    elsif (buttonName == "EVENTOS PASADOS")
        css=' #root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(2)'
        find(:css, css).click
        sleep(1)
    
    end
  
end


When(/^I should see the "([^"]*)" event$/) do |content|
    expect(page).to have_content(content)
end

