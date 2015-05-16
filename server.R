library(shiny)
library(ggplot2)
source("./helpers/xlab_name.R")
source("./helpers/reggr_name.R")
attach(mtcars)

shinyServer(function(input, output) {
  
  output$plot <- renderPlot(res = 89, {
    p <- ggplot(mtcars, aes_string(x=input$Vars, y="mpg")) + 
      geom_point(aes(size=wt,
                 color=factor(am))) +
      theme(legend.position = "bottom") +
      ylab("Miles/(US) gallon") + xlab(xlab_name(input$Vars)) +
      scale_colour_hue(name = "Transmission (0 = automatic, 1 = manual)") + scale_size(name = "Weight (lb/1000)")
    print(p)
    
    if (input$radio == 2) {
      p + geom_smooth(method = "lm")
    }

   })
  
  
    output$describe <- renderPrint({
      #reggr_name(input$Vars)
      if (input$radio == 2) {
      x <- reggr_name(input$Vars)
      summary(lm(mtcars$mpg ~ x))
      }
    })
  
  output$doc <- renderText({

})


})