// Configuración de la conexión a la base de datos usando Sequelize.

const { Sequelize } = require('sequelize');


// Create Sequelize instance
const sequelize = new Sequelize('cannes_db', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
});

sequelize.authenticate()
  .then(() => {
    console.log('Conectado')
  })
  .catch(err => {
    console.log('No se conecto')
  })


module.exports = sequelize;
