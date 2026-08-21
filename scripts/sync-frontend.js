#!/usr/bin/env node
/**
 * Buildea el frontend (cannes-hotel-sistema) y copia el resultado a /public
 * de este repo, que es lo que server.js sirve como estático.
 *
 * Por defecto asume que ambos repos están clonados como carpetas hermanas:
 *   algun-directorio/
 *     cannes-backend/         (este repo)
 *     cannes-hotel-sistema/   (el frontend, rama "facundo")
 *
 * Si el frontend está en otro lado, seteá la variable de entorno
 * FRONTEND_DIR con la ruta antes de correr el script:
 *   FRONTEND_DIR=/ruta/a/cannes-hotel-sistema npm run sync-frontend
 */

const { execSync } = require("child_process");
const fs = require("fs");
const path = require("path");

const frontendDir =
  process.env.FRONTEND_DIR || path.join(__dirname, "..", "..", "cannes-hotel-sistema");
const distDir = path.join(frontendDir, "dist");
const publicDir = path.join(__dirname, "..", "public");

function fail(message) {
  console.error(`\n❌ ${message}\n`);
  process.exit(1);
}

if (!fs.existsSync(frontendDir)) {
  fail(
    `No encontré el frontend en "${frontendDir}".\n` +
      `Cloná cannes-hotel-sistema (rama facundo) ahí al lado, o corré este script con:\n` +
      `  FRONTEND_DIR=/ruta/a/cannes-hotel-sistema npm run sync-frontend`
  );
}

console.log(`📦 Buildeando frontend en ${frontendDir} ...`);
execSync("npm run build", { cwd: frontendDir, stdio: "inherit" });

if (!fs.existsSync(distDir)) {
  fail(`El build terminó pero no encontré "${distDir}".`);
}

// Limpia el public/ actual (menos el propio directorio) para no dejar
// assets viejos con hash huérfanos, y copia el dist/ nuevo entero.
console.log(`🧹 Limpiando ${publicDir} ...`);
fs.rmSync(publicDir, { recursive: true, force: true });

console.log(`📁 Copiando ${distDir} -> ${publicDir} ...`);
fs.cpSync(distDir, publicDir, { recursive: true });

console.log("\n✅ Listo. public/ actualizado con el build más reciente del frontend.\n");
