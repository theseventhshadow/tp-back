FROM node:18-alpine

WORKDIR /app

# Copiar package.json
COPY src/package*.json ./

# Instalar dependencias (usa npm install en lugar de npm ci)
RUN npm install --only=production

# Copiar el código fuente
COPY src/ .

# Crear usuario no-root para seguridad
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001 && \
    chown -R nodejs:nodejs /app

USER nodejs

# Exponer el puerto
EXPOSE 3001

# Comando para iniciar el servidor
CMD ["node", "server.js"]
