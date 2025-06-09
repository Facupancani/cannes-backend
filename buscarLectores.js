const { SerialPort } = require('serialport');

const BAUD_RATE = 19200;

// Función para detectar lectores conectados
async function detectarLectores() {
    try {
        const puertos = await SerialPort.list();
        console.log('🔍 Buscando lectores...');
        
        if (puertos.length === 0) {
            console.log('❌ No se encontraron dispositivos en los puertos seriales.');
            return;
        }

        puertos.forEach((puerto) => {
            console.log(`📌 Detectado: ${puerto.path} - ${puerto.manufacturer || 'Desconocido'}`);
            probarPuerto(puerto.path);
        });

    } catch (error) {
        console.error('❌ Error al buscar lectores:', error);
    }
}

// Función para probar si un puerto es un lector válido
function probarPuerto(path) {
    const port = new SerialPort({
        path,
        baudRate: BAUD_RATE
    });

    port.on('open', () => console.log(`✅ Conectado a ${path}`));
    port.on('error', (err) => console.error(`❌ Error en ${path}:`, err.message));

    port.on('data', (data) => {
        if (data.length < 20) return console.warn(`⚠️ Datos incompletos en ${path}`);
        console.log(`📡 Datos recibidos en ${path}:`, data.toString());
    });
}

// Ejecutar la búsqueda de lectores
detectarLectores();
