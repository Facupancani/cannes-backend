// Para activar el modo test, puedes usar: $env:TEST_MODE="true"; node wsServer.js
const TEST_MODE = process.env.TEST_MODE === 'true'; 
const WebSocket = require('ws');

const PORT_WS = 3002;
const NUM_HABITACIONES = 16;
const wss = new WebSocket.Server({ port: PORT_WS });

let habitaciones = new Array(NUM_HABITACIONES).fill(false);

if (TEST_MODE) {
  console.log("🔹 Modo test activado: Simulando datos aleatorios.");

  // Simular cambios en las habitaciones cada 30 segundos
  setInterval(() => {
    habitaciones = habitaciones.map(() => Math.random() < 0.5); // true o false aleatorio
    enviarActualizacion();
  }, 30000);

} else {
  console.log("🔹 Modo producción: Usando puerto serial.");

  // Solo importamos 'serialport' si NO estamos en modo test
  const { SerialPort } = require('serialport');

  const SERIAL_PORT = 'COM4'; // Ajustar según que puerto serial tome
  const BAUD_RATE = 19200;
  let serialPort;

  try {
    serialPort = new SerialPort({
      path: SERIAL_PORT,
      baudRate: BAUD_RATE,
      dataBits: 8,
      parity: 'none',
      stopBits: 1,
    });

    serialPort.on('open', () => console.log(`✅ Puerto serial ${SERIAL_PORT} abierto.`));
    serialPort.on('error', (err) => console.error(`❌ Error serial: ${err.message}`));
  } catch (error) {
    console.error(`❌ No se pudo abrir el puerto serial: ${error.message}`);
  }

  // Función para enviar consulta cada segundo
  function enviarComando() {
    if (!serialPort || !serialPort.isOpen) {
      console.warn('⚠️ El puerto serial no está disponible.');
      return;
    }

    bufferAcumulado = Buffer.alloc(0); // Vaciar el buffer antes de enviar la petición
    
    // Comando de consulta: 0x61, 0x00, 0x00, 0x61
    // Ajustar el comando según la numero del dispositivo (hexa 61 es 91 en decimal) pasar a 13 q es el de cannes
    const comando = Buffer.from([0x61, 0x00, 0x00, 0x61]); 
    serialPort.write(comando, (err) => {
      if (err) console.error('❌ Error al enviar comando:', err.message);
    });
  }

  setInterval(enviarComando, 1000);

  //SETEO DEL BUFFER

  let bufferAcumulado = Buffer.alloc(0);

  // Longitud del mensaje esperado (ajustar según el protocolo del dispositivo)
  const LONGITUD_MENSAJE = 18; // Ajusta este valor si el checksum cambia la longitud

  serialPort?.on('data', (data) => {
    bufferAcumulado = Buffer.concat([bufferAcumulado, data]); // Acumulamos datos

    // Eliminar bytes 0x00 y 0x80 al inicio si no forman parte del mensaje válido
    while (bufferAcumulado.length > 0 && (bufferAcumulado[0] === 0x00 || bufferAcumulado[0] === 0x80)) {
      bufferAcumulado = bufferAcumulado.slice(1);
    }

    // Vale la pena cortar? Verificar buffer completo sin cortes, vaciandolo antes de enviar para ver si son todos iguales
    // Leer mensajes completos de exactamente LONGITUD_MENSAJE bytes
    while (bufferAcumulado.length >= LONGITUD_MENSAJE) {
      let mensajeCompleto = bufferAcumulado.slice(0, LONGITUD_MENSAJE);
      bufferAcumulado = bufferAcumulado.slice(LONGITUD_MENSAJE); // Cortamos el buffer

      console.log('✅ Mensaje completo recibido:', mensajeCompleto.toString('hex'));

      // Aquí podrías validar el checksum si es necesario
    }
  });

  /**
   * Vaciar buffer
   * hacer peticion
   * Leer respuesta completa (Ver cant de bytes)
   * Validar checksum
   * Mapear bits del buffer a habitaciones
   * Actualizar array de habitaciones
   * Enviar actualizacion a clientes
   */
  

}
  
// REVISAR: Enviar actualizaciones SOLO cuando se lee una habitacion nueva o se deja de leer.
// Enviar actualizacion de habitaciones al frontend
function enviarActualizacion() {
  wss.clients.forEach((client) => {
    if (client.readyState === WebSocket.OPEN) {
      client.send(JSON.stringify(habitaciones));
    }
  });
}

console.log(`✅ Servidor WebSocket corriendo en el puerto ${PORT_WS}`);
