# Image OS de base : alpine avec pandoc déjà intégré
FROM pandoc/latex:2.6

# Installation de modules réduite car plusieurs outils sont déjà dans l'outil de base
RUN apk update\
    && apk add texlive-full\
    texlive-xetex\
    biber

# Intégration de notre script
ADD entrypoint.sh /entrypoint.sh
# Autorisation d'exécution du script
RUN ["chmod", "+x", "/entrypoint.sh"]

# Définition du script à exécuter au démarrage du conteneur
ENTRYPOINT ["/entrypoint.sh"]
