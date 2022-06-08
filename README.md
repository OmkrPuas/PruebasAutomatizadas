# PruebasAutomatizadas
Pruebas automatizadas para la pagina de prueba de Start Americas Togheter

Para las pruebas se usaron las librerias:

Ruby
Cucumber
Capybara

Necesitando la instalacion de las librerias con los siguientes codigos:
```
 gem install cucumber
 gem install capybara
 gem install selenium-webdriver
 gem install selenium
 gem install rspec
 gem install capybara-screenshot
```

Y la configuracion de los drivers necesarios para el navegador que se este usando.

El codigo de los pasos usados para las pruebas estan escritas en Ruby, y los test automatizados usan Cucumber y Capybara.

Para la ejecucion de los test se usa el siguiente comando, teniendo que modificar el nombre del archivo a probar:
```
cucumber features/7StartAccountC.feature --publish-quiet
```
Dentro de este repositorio, hay 48 escenarios probados en total, de los cuales fallan 4. 
