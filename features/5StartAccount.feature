Feature: As any user 
         I want to use the Start Americas togheter page
         and see the account features

Background: Loged As a volunteer User
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "volunteer" user and password
	When I press the Login button
    Then The loged home page is displayed

Scenario: See the account page of a volunteer users point of view  
  Given I press the account icon 
  Then I will see my state as "Estoy Disponible"
  And I will see my "volunteer" name 
  And I will see my "volunteer" lastname 
  And I will see a button with the text "Editar Perfil"
  And I will see a button with the text "TUS EVENTOS"
  And I will see a button with the text "TUS PROYECTOS" 
  And I will see a button with the text "TUS LOGROS" 
  And I will see my profile picture