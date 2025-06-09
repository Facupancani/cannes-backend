
//  Srranca el servidor Express
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const path = require('path');



// Es necesario para que CORS no deniegue la conexion
const cors = require('cors');
const allowedOrigins = ['http://localhost:5173', 'https://dominio-aceptado-porCORS.com'];
app.use(cors({
  origin: function(origin, callback) {
    if (!origin || /^http:\/\/localhost:\d+$/.test(origin) || origin === 'https://dominio-aceptado-porCORS.com') {
      callback(null, true);
    } else {
      callback(new Error('Not allowed by CORS'));
    }
  }
}));

app.use(express.json());
app.use(require('./src/routes/HotelRoomRoutes'));
app.use(require('./src/routes/ShiftRoutes'))
app.use(require('./src/routes/ConsumitionRoutes'))
app.use(require('./src/routes/UserRoutes'))
app.use(require('./src/routes/ProductRoutes'))
app.use(require('./src/routes/LaundryRoutes'))
app.use(require('./src/routes/AdvanceRoutes'))
app.use(require('./src/routes/BillRoutes'))
app.use(require('./src/routes/ObservationRoutes'))
app.use(require('./src/routes/CashMovementRoutes'))
app.use(require('./src/routes/InternalConsumitionRoutes'))
app.use(require('./src/routes/NotificationRoutes'))
app.use(require('./src/routes/OvertimePresetRoutes'))

const comModuleAPI = require('./src/communication/comModuleAPI.js');
app.use('/api/com', comModuleAPI); // Cambiar la ruta base si es necesario

app.use(express.static(path.join(__dirname, 'public')));

// Para rutas que no son API, servir el index.html del build (React Router)
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});


app.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});

