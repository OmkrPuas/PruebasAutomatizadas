Feature: As any user 
         I want to use the Start Americas togheter page
         and see the account features

Background: Loged As a volunteer User
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "volunteer" user and password
	When I press the Login button
  And I press the account icon

#Test de navegacion

Scenario: See the account page of a volunteer users point of view  
  Then I will see my state as "Estoy Disponible"
  And I will see my "volunteer" name 
  And I will see my "volunteer" lastname 
  And I will see a button with the text "Editar Perfil"
  And I will see a button with the text "TUS EVENTOS"
  And I will see a button with the text "TUS PROYECTOS" 
  And I will see a button with the text "TUS LOGROS" 
  And I will see my profile picture

Scenario: See the events of a volunteer users 
  When I press the "Tus eventos" button on the table
  Then I will see a list of my "events"

Scenario: See the events of a volunteer users 
  When I press the "Tus proyectos" button on the table
  Then I will see a list of my "proyects"

Scenario: See the events of a volunteer users 
  When I press the "Tus logros" button on the table
  Then I will see a list of my "achievements"

#Testing state of user

@TestingAvailableV
Scenario: See the change of the state to not available
  When I change the state of the user
  Then I see the text of the state change to "No disponible"
  And I see the circle next to profiles image change to blue

@TestingNotAvailableV
Scenario: See the change of the state to available
  When I change the state of the user
  Then I see the text of the state change to "Estoy disponible"
  And I see the circle next to profiles image change to green

#Test para ver mas detalles

Scenario: See the events of a volunteer user
  When I press the "Tus eventos" button on the table
  And I try to press a "event" of the list
  Then I will see the details of the "event"

Scenario: See the proyects of a volunteer user
  When I press the "Tus proyectos" button on the table
  And I try to press a "proyect" of the list
  Then I will see the details of the "proyect"

#Test para Editar

Scenario: See the edit profile tool
  When I press the edit button
  Then I will see a table to edit the profile
  And I will see a button with the text "GUARDAR CAMBIOS"
  And I will see a button with the text "Deseo eliminar mi cuenta"

Scenario: Edit the profile
  When I press the edit button
  And I enter the required fields to edit the profile as show below
	  |Fecha de Nacimiento: 	             | 1251990                 |
    |Ocupacion: 	                       | Universidad               |
    |Carrera: 	                         | Estudiante                |
    |Ciudad de Residencia: 	             | Cochabamba                |
    |Pais de Recidencia:                 | Bolivia                   | 
    |Genero:                             | Otro                      |
    |Nombre de Contacto de Emergencia:   | Pablito                   |
    |Relacion de Contacto de Emergencia: | Hermano                   |
    |Numero de Contacto de Emergencia:   | 70707071                  |
    |Descripcion Personal:               | Hola soy un nuevo usuario |
  And I save the changes
  Then I will see an alert with the text "Se Actualizo Correctamente!"

  
    
