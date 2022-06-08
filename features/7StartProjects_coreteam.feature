Feature: Test the functionalities of projects on the app
    As a user of the application with the role of core team
    I want to use the functionalities of the projects
    So I can use it to manage and organize projects

Background: Login as coreteam
    Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "coreteam" user and password
	When I press the Login button
 

Scenario: Show the project form
    When I press the "Proyectos" button 
    And I press the CREAR PROYECTO button
    Then I should see the form to create a project

Scenario: Create a project with a start date and a end date later than the actual date where the start date is after the end date
    When I press the "Proyectos" button 
    And I press the CREAR PROYECTO button
    And I fill the fields of the project form with the following data
    |Fecha de inicio: 	| 05/12/2025              |
    |Fecha de fin: 	    | 01/12/2025      |
    |Nombre del proyecto: | Prueba 1 - 6      	|
    |Descripcion: 	    | Prueba 1 - 6   		|
    And I press the "CREAR PROYECTO" project button
    Then I press the "MEDIO AMBIENTE" project button
    And I should not see the project "Prueba 1 - 6" in the list of projects

Scenario: Create a project with a start date and a end date later than the actual date where the end date is after the start date
    When I press the "Proyectos" button 
    And I press the CREAR PROYECTO button
    And I fill the fields of the project form with the following data
    |Fecha de inicio: 	| 01/12/2025              |
    |Fecha de fin: 	    | 05/12/2025      |
    |Nombre del proyecto: | Prueba 2 - 6      	|
    |Descripcion: 	    | Prueba 2 - 6   		|
     And I press the "CREAR PROYECTO" project button
    Then I press the "MEDIO AMBIENTE" project button
    And I should not see the project "Prueba 2 - 6" in the list of projects


Scenario: Create a project with a start date and a end date earlier than the actual date where start date is after the end date
    When I press the "Proyectos" button 
    And I press the CREAR PROYECTO button
    And I fill the fields of the project form with the following data
    |Fecha de inicio: 	| 05/01/2022             |
    |Fecha de fin: 	    | 01/01/2022      |
    |Nombre del proyecto: | Prueba 3 - 6      	|
    |Descripcion: 	    | Prueba 3 - 6   		|
    And I press the "CREAR PROYECTO" project button
    Then I press the "MEDIO AMBIENTE" project button
    And I should not see the project "Prueba 3 - 6" in the list of projects


Scenario: Create a project with a start date and a end date earlier than the actual date where the end date is after the start date
    When I press the "Proyectos" button 
    And I press the CREAR PROYECTO button
    And I fill the fields of the project form with the following data
    |Fecha de inicio: 	| 01/01/2022             |
    |Fecha de fin: 	    | 05/01/2022      |
    |Nombre del proyecto: | Prueba 4 - 6      	|
    |Descripcion: 	    | Prueba 4 - 6   		|
    And I press the "CREAR PROYECTO" project button
    Then I press the "MEDIO AMBIENTE" project button
    And I should see the project "Prueba 4 - 6" in the list of projects


Scenario: Create a project with a end date later than the actual date and the start date earlier than the actual date
    When I press the "Proyectos" button 
    And I press the CREAR PROYECTO button
    And I fill the fields of the project form with the following data
    |Fecha de inicio: 	| 01/01/2022             |
    |Fecha de fin: 	    | 01/12/2022      |
    |Nombre del proyecto: | Prueba 5 - 6      	|
    |Descripcion: 	    | Prueba 5 - 6   		|
    And I press the "CREAR PROYECTO" project button
    Then I press the "MEDIO AMBIENTE" project button
    And I should see the project "Prueba 5 - 6" in the list of projects


Scenario: Create a project with a end date earlier than the actual date and the start date later than the actual date
    When I press the "Proyectos" button 
    And I press the CREAR PROYECTO button
    And I fill the fields of the project form with the following data
    |Fecha de inicio: 	| 05/01/2025             |
    |Fecha de fin: 	    | 01/12/2025      |
    |Nombre del proyecto: | Prueba 6 - 6      	|
    |Descripcion: 	    | Prueba 6 - 6   		|
    And I press the "CREAR PROYECTO" project button
    Then I press the "MEDIO AMBIENTE" project button
    And I should not see the project "Prueba 6 - 6" in the list of projects

Scenario: Participate in a project as coreteam
    When I press the "Proyectos" button
    And I press the MEDIO AMBIENTE button
    When I click on the button "Unirme" of the project "Prueba 1 - 6"
    Then I should see the alert "Participacion exitosa" on the screen