FROM dorowu/ubuntu-desktop-lxde-vnc

# Installer Google Chrome
RUN apt-get update && apt-get install -y wget \
    && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome-stable_current_amd64.deb \
    && apt-get install -f -y  # Corrige les dépendances

# Exposer le port VNC
EXPOSE 5901

# Démarrer Chrome avec VNC
CMD google-chrome-stable --no-sandbox --disable-gpu --remote-debugging-port=9222 --start-fullscreen --headless --disable-software-rasterizer --disable-accelerated-2d-canvas --no-zygote
