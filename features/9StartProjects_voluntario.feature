Feature: Test the functionalities of projects on the app
    As a user of the application with the role of voluntario
    I want to use the functionalities of the projects
    So I can use it to manage and organize projects

Background: Login as voluntario
    Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "volunteer" user and password
	When I press the Login button

Scenario: See the the active projects list
    When I press the "Proyectos" button 
    And I press the MEDIO AMBIENTE button
    Then I should be able to see the active projects list


Scenario: See the the past projects list
    When I press the "Proyectos" button 
    And I press the MEDIO AMBIENTE button
    Then I should be able to see the past projects list


Scenario: Participate in a project as volunteer
    When I press the "Proyectos" button
    And I press the MEDIO AMBIENTE button
    When I click on the button "Unirme" of the project "Prueba 1 - 6"
    Then I should see the alert "Participacion exitosa" on the screen