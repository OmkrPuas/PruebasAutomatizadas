Feature: Login as User
  In order to SignIn
  As a registered user
  I want to test the login option

@Reg
Scenario: Register a volunteer on site        
	Given I am on the Start Americas homepage
	And I press the "Unete a Start" button
	When I enter the required fields as show below
	|Nombre: 	        | Pepito             |
    |Apellido: 	        | Perez              |
    |Phone: 	        | 6042251            |
    |Email: 	        | pepe@pepazo.com    |
    |Password:          | PepeStart1         | 
    |Confirm Password:  | PepeStart1         |
	Then send my registration form
	



