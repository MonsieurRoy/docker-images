# Utilise une image Node.js légère
FROM node:18-alpine

# Crée le dossier de travail
WORKDIR /app

# Copie les fichiers de dépendances et installe
COPY backend/package*.json ./backend/
RUN cd backend && npm install

# Copie tout le code source
COPY . .

# Expose le port sur lequel votre site tourne
EXPOSE 3000

# Commande pour lancer votre site
CMD ["node", "backend/server.js"]