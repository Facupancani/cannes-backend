const sequelize = require('../config/database');
const HotelRoom = require('./HotelRoom');
const User = require('./User');
const Shift = require('./Shift');

// Sincronize models with database
sequelize
  .sync()
  .then(() => {
    console.log('Tablas sincronizadas con éxito.');
  })
  .catch((err) => {
    console.error('Error al sincronizar las tablas:', err);
  });

module.exports = {
  HotelRoom,
  User,
  Shift
};
