Feature: Start Americas Navigation
  In order to Navigate
  As a Logged User
  I want to test the navegation options

@Proyects
Scenario: Navigate to proyectos        
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	And I press the Login button
    And The loged home page is displayed
	When I press the "Proyectos" button
	Then Navigates to "Proyectos" page
	
@Events
Scenario: Navigate to Eventos
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	And I press the Login button
    When The loged home page is displayed
	When I press the "Eventos" button
	And Navigates to "Eventos" page
	

@Account
Scenario: Navigate to Cuenta
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	And I press the Login button
    When The loged home page is displayed
	Then I press the "Cuenta" button
	And Navigates to "Cuenta" page
	

@Users
Scenario: Navigate to Usuarios
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	And I press the Login button
    When The loged home page is displayed
	Then I press the "Usuarios" button
	And Navigates to "Usuarios" page