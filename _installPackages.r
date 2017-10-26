# Vorbereitung ####

  # Packages klassisch laden und ggf. vorher installieren

    installedpackages <- installed.packages()[,1]    #Liste aller installierten Pakete

    #bookdown
    if(('bookdown' %in% installedpackages)==TRUE) {
      library(bookdown)
    } else {
        install.packages('bookdown')    #wird installiert, falls nicht vorhanden
        library(bookdown)
        #devtools::install_github("rstudio/bookdown")
    }

    #außerdem in diesem Beispielprojekt verwendete Pakete
    if(('citr' %in% installedpackages)==TRUE) {
      library(citr)
    } else {
        install.packages('citr')    #wird installiert, falls nicht vorhanden
        library(citr)
    }

    if(('DT' %in% installedpackages)==TRUE) {
      library(DT)
    } else {
        install.packages('DT')    #wird installiert, falls nicht vorhanden
        library(DT)
    }

    if(('formatR' %in% installedpackages)==TRUE) {
      library(citr)
    } else {
        install.packages('formatR')    #wird installiert, falls nicht vorhanden
        library(formatR)
    }

    if(('hunspell' %in% installedpackages)==TRUE) {
      library(hunspell)
    } else {
        install.packages('hunspell')    #wird installiert, falls nicht vorhanden
        library(hunspell)
    }

    if(('webshot' %in% installedpackages)==TRUE) {
      library(webshot)
      webshot::install_phantomjs()  #für Screenshots z.B. von dynamischen Grafiken
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

  # Packages mit Packrat herstellen und verwalten ####

   # Packages mithilfe von Packrat wiederherstellen (z.B. bei Umzug des Projekts) ####
     #Dazu muss das Projekt entsprechend eingestellt sein und ein library snapshot vorhanden sein.
     packrat::status()
     packrat::restore()
     #packrat::clean() #löscht scheinbar nicht benötigte Pakete
     #neuste packrat-version via github:
      #install.packages("devtools")
      #devtools::install_github("rstudio/packrat")
