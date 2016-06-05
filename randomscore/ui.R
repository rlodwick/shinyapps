

library(shiny)

shinyUI(fluidPage(

  titlePanel("Random football results generator"),

  # Sidebar with input for number of matches, and expected goals per team
  sidebarLayout(
    sidebarPanel(
      numericInput("matches",
                  "Number of matches",
                  min = 1,
                  max = 50,
                  value = 10),
      numericInput("goals",
                  "Assumed mean number of goals scored per team (lambda)",
                  min = 0,
                  max = 5,
                  value = 1)
    ),

    # Table of results
    mainPanel(
      h5("Assumes number of goals scored by each team ~ Poisson(lambda)"),
      tableOutput("scoresTable")
    )
  )
))
