library(shinydashboard)
library(shiny)
library(DT)


shinyServer(function(input, output) {
#afficher images du dossier images
  output$monimage <- renderImage({
  
    filename <- normalizePath(file.path('./images',
                                        paste(input$culture, input$type_carte, '.png', sep='')))
    
    # Return a list containing the filename and alt text
    list(src = filename,
         alt = paste("Image number", input$type_carte))
    
  }, deleteFile = FALSE)
  
  
  #choix données à afficher
  cultureInput <- reactive({
    switch(input$culture,
           "c1" = c1,
           "c2" = c2,
            "c80" = c80,
           "c77"= c77)
  })
 #afficher tableau de données 
  output$tableau <- renderDataTable({
                                                                                                                                               
   # options = list(lengthMenu = c(5, 30, 50), pageLength = 5)
  
    tab <- read.csv((file.path('./donnees',
                                       paste(input$culture, '.csv', sep=''))), sep = "|")
    filename <- as.data.frame(tab)
  #  filename <- read.csv("donnees/c80.csv", sep = "|")
    # Return a list containing the filename and alt text
   
  #  list(src = filename,
    #     alt = paste("Image number", input$culture))
    
  })

          
  
#pour télécharger jeu de données  
  output$telechargement <- downloadHandler(
    filename = function() {normalizePath(file.path('./donnees',
                                                    paste(input$culture, '.csv', sep=''))) },
    content = function(file) {
      write.csv(cultureInput(), file)
    }
  )
    
  })

