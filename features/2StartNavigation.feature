Feature: Start Americas Navigation
  In order to Navigate
  As a Logged User
  I want to test the navegation options

Background: Loged As a Lider User
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "leader" user and password
	When I press the Login button
    Then The home page shows Tus proximos eventos

@Proyects
Scenario: Navigate to proyectos        
	When I press the "Proyectos" button
	Then Navigates to "Proyectos" page
	And I should see the "<Proyectos>" content
Examples:
    | Proyectos    |			  
   	| PROYECTOS  |
	| MEDIO AMBIENTE  |
	| DESARROLLO SOSTENIBLE  |
	| TRABAJO SOCIAL  |
	| EMPODERAMIENTO  |
	| ANIMALES  |
	| COMUNIDAD  |
	| EDUCACIÓN  |
	| OTROS  |

@Events
Scenario: Navigate to Eventos
	When I press the "Eventos" button
	Then Navigates to "Eventos" page
	And I should see the "<Eventos>" content
Examples:
    | Eventos    |			  
   	| EVENTOS VIGENTES   |
@Account
Scenario: Navigate to Cuenta
	When I press the "Cuenta" button
	Then Navigates to "Cuenta" page
	And I should see the "<Cuenta>" content
Examples:
    | Cuenta    |			  
   	| lider  |
@Users
Scenario: Navigate to Usuarios
	When I press the "Usuarios" button
	Then Navigates to "Usuarios" page
	And I should see the "<Usuarios>" content
Examples:
    | Usuarios    |			  
   	| DESCARGAR   |