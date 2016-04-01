# PRUEBA DE CONOCIMIENTO – JAVASCRIPT, JSON, PHP y HTML5

## Backend

### PHP:
1. Se debe registrar mediante php + mysql en una tabla sencilla el contenido o valor de los botones que serán explicados en la sección HTML5, deberá contener 5 registro con los valores que serán agregados a un DIV en el frontend.
2. Hacer una consulta de la tabla via ajax para ser retornada a javascript mediante JSON en la sección javascript.

## Frontend

### HTML5:
1. Crear un html5 que contenga un div centrado de 300px x 300px, debajo del div debe contener 5 botones de los cuales al darle click a cada uno debe agregar un valor al div que fue creado anteriormente (recordando que el valor de los botones deben ser exactamente los explicados en la sección PHP).
El quinto botón deberá estar enlazado con un modal y el contenido siendo el mismo de la base de datos deberá aparecer tanto en modal como en el DIV.

### Javascript:
1. Crear un JavaScript con estructura IIFE respetando los estándares ECMA Script.
2. Cualquier evento lanzado en la pagina mediante los botones, deben estar en una función dentro del IIFE llamada event_handler().
3. La información de los botones que son agregadas al div deben estar en un json dentro del IIFE y la información del json debe venir de un ajax que fue explicado en el punto del BACKEND.
4. La información del AJAX debe ser introducida en una variable dentro del IIFE que sea Object(json) y esta variable que contiene los valores del MYSQL (recordar que está variable es la responsible de la información que será puesta en el DIV y Modal).

## Se sumará puntos si se agrega lo siguiente:
1. Buena estructura de código.
2. Cache a las variables Javascript.
3. Buena estructura PHP.

### Se puede utilizar cualquier Frameworks Javascript:
1. jQuery
2. Backbone
