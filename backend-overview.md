# Descripción General de la Aplicación

Esta aplicación backend está diseñada para gestionar información relacionada con el sistema del hotel mediante una API REST. Utiliza Express para manejar las solicitudes HTTP y Sequelize como ORM para interactuar con una base de datos MySQL.

---

## Flujo de Funcionamiento

1. **Inicio del Servidor**: `server.js` arranca el servidor y configura las rutas.
2. **Recepción de Solicitudes**: Las solicitudes HTTP entrantes son gestionadas por Express y redirigidas a las rutas correspondientes.
3. **Procesamiento de Solicitudes**: Las rutas llaman a las funciones de los controladores que contienen la lógica para manejar las solicitudes.
4. **Interacción con la Base de Datos**: Los controladores utilizan los modelos para interactuar con la base de datos. Los modelos están configurados en `database.js` para conectar con la base de datos MySQL.
5. **Respuesta al Cliente**: Después de procesar los datos, los controladores envían una respuesta JSON al cliente a través de las rutas.





#### Descripción General de la Estructura del Backend ####


## `server.js`

Es el punto de entrada de la aplicación backend. Arranca el servidor Express y configura el puerto de escucha. Además, establece el middleware necesario, como `express.json()`, para procesar las solicitudes HTTP y define las rutas principales de la API, utilizando los módulos de rutas importados.

---

## `database.js`

Configura la conexión a la base de datos utilizando Sequelize. Este archivo contiene la instancia de Sequelize que se encargará de gestionar todas las interacciones entre la aplicación y la base de datos.

---

## Modelos

Los modelos representan las tablas de la base de datos y definen su estructura, incluyendo los campos y sus tipos de datos. Utilizan Sequelize para proporcionar métodos que permiten realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en la base de datos. Cada modelo se encuentra en la carpeta `models` y puede ser ampliado o modificado a medida que la aplicación escala.

-

## `index.js`

El archivo `index.js` facilita la importación de todos los modelos desde un solo lugar, en lugar de tener que importar cada modelo individualmente desde sus respectivos archivos en cada parte del código.

---

## Controladores

Los controladores manejan la lógica de negocio para procesar las solicitudes recibidas a través de la API. Están diseñados para interactuar con los modelos, realizar las operaciones necesarias y devolver respuestas adecuadas al cliente. Cada controlador se encuentra en la carpeta `controllers` y contiene funciones para manejar diversas operaciones, como obtener, crear, actualizar y eliminar datos.

---

## Rutas

Las rutas definen los endpoints de la API y están asociadas con los controladores correspondientes. Actúan como intermediarios entre el servidor Express y los controladores, redirigiendo las solicitudes HTTP a las funciones adecuadas en los controladores. Las rutas se encuentran en la carpeta `routes` y se configuran para manejar diferentes tipos de solicitudes (GET, POST, PUT, DELETE) para cada recurso de la aplicación.

---

Axios, sequelize, express, CORS
REACT, vite, node.js
Manejo de consolas
