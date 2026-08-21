// comModule.js
const { SerialPort } = require('serialport');

const SERIAL_PORT = 'COM1'; // Ajustar según configuración del sistema
const BAUD_RATE = 19200;
const NUM_HABITACIONES = 16; // Se puede ajustar según necesidad

// Array de los lectores de las habitaciones
let lectores = new Array(NUM_HABITACIONES).fill(false);

// Configuración del serialPort
let serialPort;
try {
  serialPort = new SerialPort({
    path: SERIAL_PORT,
    baudRate: BAUD_RATE,
    dataBits: 8,
    parity: 'none',
    stopBits: 1
  });

  serialPort.on('open', () => console.log(`Puerto serial ${SERIAL_PORT} abierto correctamente.`));

  serialPort.on('error', (err) => {
    console.error(`Error en el puerto serial: ${err.message}`);
  });
} catch (error) {
  console.error(`No se pudo abrir el puerto serial ${SERIAL_PORT}: ${error.message}`);
}

// Función para enviar el comando de interrogación cada segundo
function enviarComando() {
  if (!serialPort?.isOpen) {
    console.warn('El puerto serial no está disponible. Reintentando...');
    return;
  }
  const comando = Buffer.from([0x04, 0x00, 0x00, 0x04]); // Comando de consulta
  serialPort.write(comando, (err) => {
    if (err) {
      console.error('Error al enviar comando:', err.message);
    }
  });
}

// Leer datos del puerto serial y actualizar estado
serialPort?.on('data', (data) => {
  console.log('Datos recibidos:', data);

  // Validar datos utilizando checksum (si aplica)
  if (data.length < 1) {
    return; // O la longitud mínima esperada
  }

  // Mapear el estado de las habitaciones según el BIT correspondiente de la respuesta "data"
  // Suponiendo que el primer byte de la respuesta contiene el estado de las habitaciones
  // y que cada bit representa una habitación (1 = ocupada, 0 = libre)
  // El for toma el byte, lo traduce a bits y luego a booleanos
  for (let i = 0; i < NUM_HABITACIONES; i++) {
    const bit = (data[0] >> i) & 1; // Obtener el bit correspondiente
    lectores[i] = bit === 1; // Actualizar el estado de la habitación
  }

  console.log('Estado actualizado de los lectores: ', lectores);
});

// Enviar el comando cada segundo
setInterval(enviarComando, 1000);

// Función para obtener el estado de los lectores
function getEstadoLectores() {
  return lectores;
}

// Función para establecer nuevos estados de los lectores
function setEstadoLectores(nuevoEstado) {
  lectores = nuevoEstado;
}

module.exports = {
  getEstadoLectores,
  setEstadoLectores
};
