# Utiliser l'image de base Nginx
FROM nginx:latest

# Supprimer la page d'accueil existante et ajouter une nouvelle
RUN echo '<h1>Bienvenue sur mon serveur Nginx personnalisé!</h1>' > /usr/share/nginx/html/index.html

# Modifier le port par défaut de Nginx (exemple: 8080)
RUN sed -i 's/listen 80;/listen 8014;/g' /etc/nginx/conf.d/default.conf

# Exposer le nouveau port
EXPOSE 8014

# Lancer Nginx en mode foreground
CMD ["nginx", "-g", "daemon off;"]
