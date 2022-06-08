# PruebasAutomatizadas
Pruebas automatizadas para la pagina de prueba de Start Americas Togheter

Para el presente proyecto se requiere tener instalado el lenguaje ruby en su ultima version estable
- Ruby (version 3.1.2)

Para las pruebas se usaron las gemas:
- Cucumber
- Capybara
- Selenium

Para instalar dichas gemas pueden utilizarse los siguientes comandos:
```
 gem install cucumber
 gem install capybara
 gem install selenium-webdriver
 gem install selenium
 gem install rspec
 gem install capybara-screenshot
```

Y la configuracion de los drivers necesarios para el navegador de google chrome, con el cual se realizo el presente framework. El driver de chromedriver peude descargarse del [siguiente enlace](https://chromedriver.chromium.org/)

El codigo de los pasos usados para las pruebas estan escritas en Ruby, y los test automatizados usan Cucumber y Capybara.

Para ejecutar los test y generar un reporte se utiliza el siguiente comando:
```
cucumber --publish
```

Si se desea ejecutar un archivo en concreto se utilizar el siguiente comando, utilizando en "Nombre_de_feature" el nombre del feature que se desee probar

```
cucumber features/Nombre_de_feature
```

Dentro de este repositorio, hay 48 escenarios probados en total, de los cuales fallan 4. 
