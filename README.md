# Guide d'utilisation du script de téléchargement d'images Kaiju No. 8

Ce script PowerShell est conçu pour télécharger automatiquement des images de chapitres de manga depuis le site `anime-sama.fr`. Il crée un dossier séparé pour chaque chapitre et télécharge toutes les pages disponibles.

## Prérequis

- PowerShell 5.0 ou supérieur.
- Accès à Internet.
- Permissions nécessaires pour créer des dossiers et écrire des fichiers dans le répertoire cible.

## Installation

Aucune installation n'est nécessaire. Téléchargez simplement le script `main.ps1` sur votre ordinateur.

## Configuration

Avant d'exécuter le script, assurez-vous que le chemin `C:\Images\` existe ou modifiez la variable `$cheminBase` dans le script pour pointer vers un répertoire de votre choix.

## Utilisation

Pour utiliser le script, suivez ces étapes :

1. Ouvrez PowerShell en tant qu'administrateur.
2. Naviguez jusqu'au répertoire où vous avez enregistré le script.
3. Exécutez le script en tapant `.\main.ps1`.
4. Lorsque vous y êtes invité, entrez le numéro du premier chapitre à télécharger.
5. Ensuite, entrez le numéro du dernier chapitre à télécharger.

Le script commencera à télécharger les images dans des dossiers séparés pour chaque chapitre.

## Problèmes connus

- Si le script rencontre une erreur `404 Introuvable`, cela signifie qu'une page ou un chapitre n'est pas disponible et il passera au chapitre suivant.
- Assurez-vous d'entrer des numéros de chapitre valides pour éviter les erreurs.

## Licence

Ce script est fourni tel quel, sans garantie d'aucune sorte. Veuillez vous assurer que vous avez le droit de télécharger les images depuis le site web et respectez les droits d'auteur et les conditions d'utilisation du site.

## Support

Si vous rencontrez des problèmes ou avez des questions sur l'utilisation du script, n'hésitez pas à demander de l'aide.

