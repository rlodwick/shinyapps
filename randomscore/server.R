
library(shiny)

shinyServer(function(input, output) {
  
  output$scoresTable <- renderTable(
    df <- data.frame(teamA=rpois(input$matches,input$goals),
                     teamB=rpois(input$matches,input$goals))
  )
    

})
