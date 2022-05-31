Feature: As a volunter user
         I want to use the Start Americas togheter page
         so I test that works correctly

Background: Loged As a Lider User
	Given I am on the Start Americas homepage
	And I press the "Iniciar Sesión" button
	And I enter my "volunteer" user and password
	When I press the Login button
  Then The loged home page is displayed

Scenario: See the Start Americas Homepage     
  Given I am on the Start Americas homepage
  Then Ill see a button with the text "INICIAR SESIÓN"

Scenario: See the Start Americas homepage of volunteer user    
  Given I am on the Start Americas loginpage
  And I enter my "volunteer" user and password
  When I press the "INICIAR SESIÓN" blue button
  Then Ill see a button with the text "Inicio"
  And Ill see a button with the text "Proyectos"
  And Ill see a button with the text "Eventos"
  And Ill see a button with the text "Cuenta"

Scenario: See the proyects of a volunteer users point of view
  Given I am on the Start Americas loginpage
  And I enter my "volunteer" user and password
  When I press the "INICIAR SESIÓN" blue button
  And I press the proyects icon 
  Then Ill see a button with the text "Medio Ambiente"

Scenario: See the events of a volunteer users point of view  
  Given I am on the Start Americas loginpage
  And I enter my "volunteer" user and password
  When I press the "INICIAR SESIÓN" blue button
  And I press the events icon 
  Then Ill see a button with the text "Eventos Pasados"

Scenario: See the account of a volunteer users point of view  
  Given I am on the Start Americas loginpage
  And I enter my "volunteer" user and password
  When I press the "INICIAR SESIÓN" blue button
  And I press the account icon 
  Then Ill see a button with the text "Editar Perfil"


