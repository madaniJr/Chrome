# Utiliser une image Ubuntu de base
FROM ubuntu:latest

# Installer les dépendances nécessaires
RUN apt-get update && apt-get install -y wget curl gnupg

# Ajouter la clé GPG et le dépôt Google Chrome
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | tee /etc/apt/sources.list.d/google-chrome.list

# Installer Google Chrome
RUN apt-get update && apt-get install -y google-chrome-stable

# Exposer le port VNC
EXPOSE 5901

# Démarrer Chrome avec VNC
CMD google-chrome-stable --no-sandbox --disable-gpu --remote-debugging-port=9222 --start-fullscreen --headless --disable-software-rasterizer --disable-accelerated-2d-canvas --no-zygote
