// Archivo principal que arranca el servidor Express

const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;


// Es necesario para que CORS no deniegue la conexion
const cors = require('cors');
const allowedOrigins = ['http://localhost:5173', 'https://dominio-aceptado-porCORS.com'];
app.use(cors({
  origin: function(origin, callback){
    if (!origin || allowedOrigins.indexOf(origin) !== -1) {
      callback(null, true)
    } else {
      callback(new Error('Not allowed by CORS'))
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

app.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});
