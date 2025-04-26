// wsServer.js
const WebSocket = require("ws");

const PORT_WS = 3002;

const wss = new WebSocket.Server({ port: PORT_WS });

wss.on("connection", (ws) => {
  console.log("Cliente conectado al WebSocket");

  ws.on("message", (message) => {
    console.log(`Mensaje recibido: ${message}`);
  });
});


// Función para enviar el estado de los lectores
function enviarEstadoLectores(nuevoEstado) {
  const mensaje = JSON.stringify({ tipo: "estadoLectores", data: nuevoEstado });

  wss.clients.forEach((cliente) => {
    if (cliente.readyState === WebSocket.OPEN) {
      cliente.send(mensaje);
    }
  });
}

module.exports = {
  enviarEstadoLectores,
};
