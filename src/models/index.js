const sequelize = require('../config/database');
const HotelRoom = require('./HotelRoom');

// Sincronize models with database
sequelize.sync()
  .then(() => {
    console.log('Tablas sincronizadas con éxito.');
  })
  .catch(err => {
    console.error('Error al sincronizar las tablas:', err);
  });

module.exports = {
  HotelRoom,
};