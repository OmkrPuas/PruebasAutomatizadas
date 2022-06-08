Feature: As any user 
         I want to use the Start Americas togheter page
         and see the account features

Background: Loged As a leader User
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	And I press the Login button
  And I press the account icon

Scenario: See the events of a leader users 
  When I press the "Tus logros" button on the table
  Then I will see a list of my "achievements"

@TestingAvailableL
Scenario: See the change of the state to not available
  When I change the state of the user
  Then I see the text of the state change to "No disponible"
  And I see the circle next to profiles image change to blue

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
