# Auswertungs-R-Skript ####

  # Platzhalter für euer R-Skript.
  # Mein Tipp: Schreibt es so, dass das gesamte Skript ausgeführt werden kann.
  # So könnt ihr das Skript (per source('_Auswertungsskript.r')) durchlaufen lassen,
  # bevor das Buch final kompiliert wird.

# Vorbereitung ####

  # Packages laden ####

    # Packages mithilfe von Packrat wiederherstellen (z.B. bei Umzug des Projekts) ####
      #Dazu muss das Projekt entsprechend eingestellt sein und ein library snapshot vorhanden sein.
      packrat::status()
      packrat::restore()
      packrat::clean() #löscht scheinbar nicht benötigte Pakete

    # Packages klassisch laden

      installedpackages <- installed.packages()[,1]    #Liste aller installierten Pakete

      #bookdown
      if(('bookdown' %in% installedpackages)==TRUE) {
        library(bookdown)
      } else {
          install.packages('bookdown')    #wird installiert, falls nicht vorhanden
          library(bookdown)
      }

      #außerdem in diesem Beispielprojekt verwendete Pakete
      if(('DT' %in% installedpackages)==TRUE) {
        library(DT)
      } else {
          install.packages('DT')    #wird installiert, falls nicht vorhanden
          library(DT)
      }

      if(('citr' %in% installedpackages)==TRUE) {
        library(citr)
      } else {
          install.packages('citr')    #wird installiert, falls nicht vorhanden
          library(citr)
      }

      if(('hunspell' %in% installedpackages)==TRUE) {
        library(hunspell)
      } else {
          install.packages('hunspell')    #wird installiert, falls nicht vorhanden
          library(hunspell)
      }

      if(('webshot' %in% installedpackages)==TRUE) {
        library(webshot)
      } else {
          install.packages('webshot')    #wird installiert, falls nicht vorhanden
          library(webshot)
          webshot::install_phantomjs()  #für Screenshots z.B. von dynamischen Grafiken
      }

      if(('xtable' %in% installedpackages)==TRUE) {
        library(xtable)
      } else {
          install.packages('xtable')    #wird installiert, falls nicht vorhanden
          library(xtable)
      }
