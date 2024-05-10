# Demander à l'utilisateur de saisir le numéro du chapitre de début
$chapitreDebut = [int](Read-Host "Entrez le numéro du chapitre de début")
# Demander à l'utilisateur de saisir le numéro du chapitre de fin
$chapitreFin = [int](Read-Host "Entrez le numéro du chapitre de fin")

# Définir le chemin de base pour enregistrer les images
$cheminBase = "C:\Images\"

# Boucle sur les chapitres
for ($chapitre = $chapitreDebut; $chapitre -le $chapitreFin; $chapitre++) {
    $page = 1
    $urlBase = "https://anime-sama.fr/s1/scans/Kaiju%20N%C2%B08/$chapitre/"
    $url = $urlBase + $page + ".jpg"
    $cheminDossierChapitre = $cheminBase + "Chapitre-" + $chapitre
    
    # Créer un dossier pour le chapitre s'il n'existe pas
    if (-not (Test-Path -Path $cheminDossierChapitre)) {
        New-Item -ItemType Directory -Path $cheminDossierChapitre
    }
    
    # Tant qu'il y a des images à télécharger
    while ($true) {
        try {
            # Vérifier si l'image existe
            $response = Invoke-WebRequest -Uri $url -UseBasicParsing -Method Head
            if ($response.StatusCode -eq 200) {
                # Formater la variable $page avec un remplissage de zéros si nécessaire
                $pageFormatted = "{0:D2}" -f [int]$page

                $cheminDestination = $cheminDossierChapitre + "\Kaiju8_Chapitre-" + $chapitre + "_Page-" + $pageFormatted + ".jpg"
                
                # Télécharger l'image
                Invoke-WebRequest -Uri $url -OutFile $cheminDestination
                
                # Passer à la page suivante
                $page++
                $url = $urlBase + $page + ".jpg"
            }
        }
        catch [System.Net.WebException] {
            # Si une erreur 404 est capturée, passer au chapitre suivant
            if ($_.Exception.Response.StatusCode -eq 'NotFound') {
                break
            }
        }
    }
}

# Afficher un message lorsque le téléchargement est terminé
Write-Host "Téléchargement des chapitres $chapitreDebut à $chapitreFin terminé."
