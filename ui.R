library(shiny)
library(datasets)

shinyUI(fluidPage(    
    
    # Give the page a title
    titlePanel("Longley's Economic Regression Data"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("feature", "Feature:", 
                    choices=colnames(longley[,1:5])),
        hr(),
        helpText("Economical variables observed yearly from 1947 to 1962. To browse the categories, choose the variable from the widget.")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("longleyPlot")  
      )
      
    )
  )
)


