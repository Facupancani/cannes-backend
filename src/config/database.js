// Configuración de la conexión a la base de datos usando Sequelize.
// Las credenciales se leen desde variables de entorno (ver .env.example).

const { Sequelize } = require('sequelize');

// Create Sequelize instance
const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASSWORD, {
  host: process.env.DB_HOST,
  dialect: process.env.DB_DIALECT || 'mysql',
  logging: true // Activa o Desactiva los logs de Sequelize
});

sequelize
  .authenticate()
  .then(() => {
    console.log('Conectado');
  })
  .catch((err) => {
    console.log('No se conecto');
  });

module.exports = sequelize;
