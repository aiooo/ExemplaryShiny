library(shiny)
library(datasets)
palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
  "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$longleyPlot <- renderPlot({
    
    # Render a barplot
    barplot(longley[,input$feature], 
            col="#377EB8",
            main=input$feature,
            ylab=input$feature,
            xlab="Year",
            names.arg = longley$Year
            )
  })
})

