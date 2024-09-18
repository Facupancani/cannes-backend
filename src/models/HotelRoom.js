const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

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
    type: DataTypes.DECIMAL(65, 0),
    allowNull: true,  
  },
  pred_time: {
    type: DataTypes.TIME(6),
    allowNull: true, 
  },
  state: {
    type: DataTypes.STRING(100),
    allowNull: true, 
  },
  current_shift_id: {
    type: DataTypes.INTEGER,
    allowNull: true
  }
}, {
  tableName: 'hotel_room',  // Nombre de la tabla en la base de datos
  timestamps: false         // Si no tienes campos createdAt y updatedAt
});

module.exports = HotelRoom;
