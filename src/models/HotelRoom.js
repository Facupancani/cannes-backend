// Definición del modelo HotelRoom, es como se estructuran los datos en la base de datos.


const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');  // Importa la conexión

// Definir el modelo HotelRoom
const HotelRoom = sequelize.define('HotelRoom', {
  id: {
    type: DataTypes.BIGINT,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  room_number: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  pred_price: {
    type: DataTypes.DECIMAL(65, 0),  // Define el tipo y la precisión
    allowNull: true,  // Puede ser nulo
  },
  pred_time: {
    type: DataTypes.TIME(6),
    allowNull: true,  // Puede ser nulo
  },
  state: {
    type: DataTypes.STRING(100),
    allowNull: true,  // Puede ser nulo
  },
  current_shift_id: {
    type: DataTypes.INTEGER,
    allowNull: true  // Puede ser nulo
  }
}, {
  tableName: 'hotel_room',  // Nombre de la tabla en la base de datos
  timestamps: false         // Si no tienes campos createdAt y updatedAt
});

module.exports = HotelRoom;
