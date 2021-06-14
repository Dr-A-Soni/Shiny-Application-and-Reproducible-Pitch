#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$plot1 <- renderPlot({
        minx <- input$n[1]
        miny <- input$n[2]
        x <- rnorm(minx,miny)
        y <- dnorm(x, mean(x), sd(x))
        plot(x,y, col = "orange", pch = 11, cex =0.9)
    })
    
    output$hist <- renderPlot({
        minx <- input$n[1]
        miny <- input$n[2]
        x <- rnorm(minx,miny)
        y <- dnorm(x, mean(x), sd(x))
        hist(x ,y , breaks = 20, col = "orange")
        
    })
    
    
    
    output$Probability <- reactive({
        dnorm(input$n, input$Mean, input$Sd)
    })
    
}

# Run the application 

shinyApp(ui = ui, server = server)
