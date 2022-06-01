Feature: As a lider user
  I want to use the eventos options
  So i test that works

Background: Loged As a Lider User
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	When I press the Login button
    Then The loged home page is displayed
	

@ShowForm
Scenario: Mostrar formulario Crear evento
	Given I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	When I press the Crear Evento button
	Then The Crear evento form is displayed
	Then The Guardar Evento botton and cancel are show


@crear
Scenario: Crear Evento
	Given I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	And I press the Crear Evento button
	When The Crear evento form is displayed
	Then I enter the required event fields as show below
	|Nombre Evento: 	| Evento Automatico             |
    |Descripcion: 	    | Descripcion Evento automatico     |
    |Lider: 	        | Lider Lider      	|
    |Modalidad: 	    | Virtual   		|
    |Lugar:           	| CBBA  |	
    |Fecha: 	        | 06/07/2022        |
    |Categoria: 	    | Educacion         |
    |Proyecto:  		| Prueba            |
	Then The Guardar Evento botton and cancel are show
	Then Press the "GuardarEvento" button
	

