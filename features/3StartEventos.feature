Feature: As a lider user
  I want to use the eventos options
  So i test that works

Background: Loged As a Lider User
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	When I press the Login button
    Then The home page shows Tus proximos eventos
	


@CreateEventos
Scenario: Mostrar formulario Crear evento
	When I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	Then I press the Crear Evento button
	And The "Crear evento" form shows the tittle form

Scenario: Crear Evento
	When I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	And Press the "Crear Evento" button
	And The "Crear evento" form shows the tittle form
	Then  I enter the required event fields as show below
	|Nombre Evento: 	| Evento Automatizado |
    |Descripcion: 	    | Descripcion Evento Automatizado|
    |Lider: 	        | Lider Lider       |
    |Modalidad: 	    | Virtual   		|
    |Lugar:           	| CBBA  |	
    |Fecha: 	        | 10/06/2022        |
    |Categoria: 	    | Educacion         |
    |Proyecto:  		| ProyectoPrueba            |
	And Press the "Guardar Evento" button

@VerEventosPasados
Scenario: Ver Eventos pasados
	When I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	Then Press the "Eventos Pasados" button
	And I should see the "<EventosPasados>" content
	Examples:
    | EventosPasados    |			  
   	| EVENTOS PASADOS   |


Scenario Outline: Ver detalle Evento
	When I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	And Press the "Detalles" button of card "<evento>"
	Then I should see the "<description>" event
	And I should see the "<modalidad>" event
	And I should see the "<lugar>" event

	Examples:
    | evento               	 | description    					| modalidad |lugar		|
    | Evento Automatizado2    | Descripcion Evento Automatizado2  |  Virtual	|LPZ |
	

@ParticiparEvento
Scenario: Participar en evento
	When I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	Then Press the "participar" button of card "Evento Automatizado2" 
	And The "DejarParticipar" button of card "Evento Automatizado2" is show

@EditarEvento
Scenario: Editar evento
	When I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	And Press the "Detalles" button of card "Evento Automatizado2" 
	Then Press the "Editar" button
	And The "Editar evento" form shows the tittle form
	And I enter the required event fields as show below
	|Nombre Evento: 	| Evento Automatizado editado |
    |Descripcion: 	    | Descripcion Evento editado|
    |Lider: 	        | Inge Soft      |
    |Lugar:           	| La Paz  |	
    |Fecha: 	        | 11/07/2023        |
    |Categoria: 	    | Medio ambiente      |
    |Proyecto:  		| ProyectoPrueba            |
	And Press the "Guardar Cambios" button
	And I should see the "<description>" event
	And I should see the "<lugar>" event
	And I should see the "<categoria>" event
	Examples:
    | evento               	 	   | description    			 | lugar 	|categoria		|
    | Evento Automatizado editado  | Descripcion Evento editado  |  La Paz	|Medio ambiente|

@EliminarEvento
Scenario: Eliminar evento
	When I press the "Eventos" button
	And Navigates to "Eventos" page
	And The "Eventos" page is displayed
	Then Press the "Eliminar" button of card "Evento Automatizado editado" 
	And Press the "Confirmar" button




	