Feature: As a lider user
  I want to use the eventos options
  So i test that works

Background: Loged As a Lider User
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	When I press the Login button
    Then The loged home page is displayed
	


@CreateEventos
Scenario: Mostrar formulario Crear evento
	Given I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	When I press the Crear Evento button
	Then The "Crear evento" form is displayed

Scenario: Crear Evento
	Given I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	And Press the "Crear Evento" button
	And The "Crear evento" form is displayed
	When I enter the required event fields as show below
	|Nombre Evento: 	| Evento Automatizado |
    |Descripcion: 	    | Descripcion Evento Automatizado|
    |Lider: 	        | Lider Lider       |
    |Modalidad: 	    | Virtual   		|
    |Lugar:           	| CBBA  |	
    |Fecha: 	        | 10/06/2022        |
    |Categoria: 	    | Educacion         |
    |Proyecto:  		| ProyectoPrueba            |
	Then Press the "Guardar Evento" button



Scenario Outline: Ver detalle Evento
	Given I press the "Eventos" button
	And Navigates to "Eventos" page
	When The "Eventos" page is displayed
	And Press the "Detalles" button of card "<evento>"
	Then I should see the "<description>" event
	Then I should see the "<modalidad>" event
	Then I should see the "<lugar>" event

	Examples:
    | evento               	 | description    					| modalidad |lugar		|
    | Evento Automatizado2    | Descripcion Evento Automatizado2  |  Virtual	|LPZ |
	

@ParticiparEvento
Scenario: Participar en evento
	Given I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	When Press the "participar" button of card "Evento Automatizado2" 
	Then The "DejarParticipar" button of card "Evento Automatizado2" is show

@EditarEvento
Scenario: Editar evento
	Given I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	And Press the "Detalles" button of card "Evento Automatizado2" 
	When Press the "Editar" button
	And The "Editar evento" form is displayed
	And I enter the required event fields as show below
	|Nombre Evento: 	| Evento Automatizado editado |
    |Descripcion: 	    | Descripcion Evento editado|
    |Lider: 	        | Inge Soft      |
    |Lugar:           	| La Paz  |	
    |Fecha: 	        | 11/07/2023        |
    |Categoria: 	    | Medio ambiente      |
    |Proyecto:  		| ProyectoPrueba            |
	Then Press the "Guardar Cambios" button
	And I should see the "<description>" event
	And I should see the "<lugar>" event
	And I should see the "<categoria>" event
	Examples:
    | evento               	 	   | description    			 | lugar 	|categoria		|
    | Evento Automatizado editado  | Descripcion Evento editado  |  La Paz	|Medio ambiente|

@EliminarEvento
Scenario: Eliminar evento
	Given I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	When Press the "Eliminar" button of card "Evento Automatizado editado" 
	Then Press the "Confirmar" button