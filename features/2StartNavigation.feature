Feature: Start Americas Navigation
  In order to Navigate
  As a Logged User
  I want to test the navegation options

@Proyec
Scenario: Navigate to proyectos        
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	And I press the Login button
    And The loged home page is displayed
	When I press the "Proyectos" button
	Then Navigates to "Proyectos" page
	And The "Proyectos" pages is displayed
@Events
Scenario: Navigate to Eventos
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	And I press the Login button
    And The loged home page is displayed
	When I press the "Eventos" button
	Then Navigates to "Eventos" page
	And The "Eventos" pages is displayed

@Account
Scenario: Navigate to Cuenta
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	And I press the Login button
    And The loged home page is displayed
	When I press the "Cuenta" button
	Then Navigates to "Cuenta" page
	And The "Cuenta" pages is displayed

@Users
Scenario: Navigate to Usuarios
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	And I press the Login button
    And The loged home page is displayed
	When I press the "Usuarios" button
	Then Navigates to "Usuarios" page
	And The "Usuarios" pages is displayed