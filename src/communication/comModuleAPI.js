// comModuleAPI.js
const express = require("express");
const router = express.Router();
const { getEstadoLectores, setEstadoLectores} = require("./comModule"); 
const { enviarEstadoLectores } = require("./wsServer"); 

// Endpoint GET para consultar el estado de los lectores
router.get("/estado", (req, res) => {
  const estado = getEstadoLectores();
  res.json(estado);
});

// Endpoint POST para simular la inserción de tarjetas (cambio de estado)
router.post("/simular", (req, res) => {
    try {
      console.log("Cuerpo de la solicitud:", req.body); // Verifica si `habitaciones` está llegando bien
  
      // Verificar que req.body y req.body.habitaciones existan
      if (!req.body || !Array.isArray(req.body.habitaciones)) {
        console.log(
          "El cuerpo de la solicitud no es válido o 'habitaciones' no es un array."
        );
        return res
          .status(400)
          .json({
            error: 'Debes enviar un array de booleanos en "habitaciones".',
          });
      }
  
      const nuevasHabitaciones = req.body.habitaciones;
  
      if (!Array.isArray(nuevasHabitaciones)) {
        console.log("El cuerpo de la solicitud no es un array.");
        return res
          .status(400)
          .json({ error: "Debes enviar un array de booleanos." });
      }
  
      // Obtener estado actual desde comModule
      const estadoActual = getEstadoLectores();
  
      // Verificar cambios y loguear
      nuevasHabitaciones.forEach((estadoNuevo, i) => {
        if (estadoActual[i] !== estadoNuevo) {
          const room_number = i + 1;
          console.log(
            `Habitación ${room_number}: tarjeta ${
              estadoNuevo ? "insertada" : "retirada"
            }`
          );
        }
      });
  
      // Actualizar estado en comModule
      setEstadoLectores(nuevasHabitaciones);
  
      // Enviar nuevo estado por WebSocket
      enviarEstadoLectores(nuevasHabitaciones);

      // Responder al cliente
      res.json({ success: true, habitaciones_actualizadas: nuevasHabitaciones });
    } catch (error) {
      console.error("Error en POST /simular:", error);
      res.status(500).json({ error: "Error interno del servidor" });
    }
});

module.exports = router;
