
# Docker Chrome avec VNC

Ce projet crée un conteneur Docker avec **Google Chrome** et un serveur **VNC** pour pouvoir accéder à une instance graphique de Chrome depuis n'importe quel client VNC.

## Étapes :

### 1. Construire l'image Docker :

Exécute la commande suivante pour construire l'image Docker avec le navigateur Chrome et le serveur VNC :

```bash
docker build -t chrome-vnc .
```

### 2. Exécuter le conteneur :

Une fois l'image construite, démarre le conteneur avec la commande suivante :

```bash
docker run -d -p 5901:5901 -p 9222:9222 --name chrome-vnc chrome-vnc
```

Cela démarre le conteneur avec un serveur VNC, auquel tu peux te connecter via un client VNC (comme **VNC Viewer**).

Par défaut, tu peux te connecter à `localhost:5901` (ou `127.0.0.1:5901`), et tu devrais voir un environnement graphique avec **Chrome** lancé.

## Conclusion :

- Le **mode headless** (sans interface graphique) est simple et efficace pour des tâches automatisées.
- Le mode **VNC** (avec interface graphique) te permet de voir et d'interagir avec le navigateur comme tu le ferais normalement sur ton ordinateur.
