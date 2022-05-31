
When(/^I press the Crear Evento button$/) do 
     xpath ='//*[@id="root"]/div[2]/div[1]/div/div[1]/div[1]/div[3]/div[2]/button[1]'
     find(:xpath, xpath).click
     end

Then(/^The Crear evento form is displayed$/) do
     formTittle = 'Crear Evento'
     find(:xpath, '//*[@id="ModalFormCrearEvento"]/div/div/strong', :text => formTittle)
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
	when "Fecha:"
		fill_in 'fecha_evento', :with => value
     when "Categoria:"
		select(value, :from => 'categoria')
     when "Proyecto:"
		select(value, :from =>  'proyecto')
		
	end
  end
end
When(/^Press the "([^"]*)" button$/) do |buttonName|
     click_button(buttonName)
     sleep 2
   end