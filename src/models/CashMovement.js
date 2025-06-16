const { DataTypes } = require('sequelize')
const sequelize = require('../config/database')

const CashMovement = sequelize.define('cash_movement', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  date: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: DataTypes.NOW
  },
  type: {
    type: DataTypes.STRING(50),
    allowNull: false
  },
  details: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  room: {
    type: DataTypes.STRING(10),
    allowNull: true
  },
  room_price: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: true
  },
  consumptions: {
    type: DataTypes.TEXT, // Guarda un JSON serializado
    allowNull: true,
    get() {
      const raw = this.getDataValue('consumptions')
      return raw ? JSON.parse(raw) : []
    },
    set(value) {
      this.setDataValue('consumptions', JSON.stringify(value))
    }
  },
  commission: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: true
  },
  discount: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: true
  },
  cash_amount: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: true
  },
  transfer_amount: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: true
  },
  total: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false
  },
  conserje: {
    type: DataTypes.STRING(100),
    allowNull: true
  }
}, {
  tableName: 'cash_movement',
  timestamps: false
})

module.exports = CashMovement
