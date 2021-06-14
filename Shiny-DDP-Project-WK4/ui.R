#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    # Application title
    titlePanel("Probability and Normal Distribution"),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("n", "Select Random Numbers:",
                        min = 1, max = 1000, value = c(100, 1000)),
            sliderInput("Mean","Select the mean:",
                        min = 1, max = 100,value = 30),
            sliderInput("Sd", "Select the Standard Deviation:", min = 1, max = 100,
                        value = 10),
            
            submitButton("Update")
        ),
        
        # Show a plot of the generated distribution
        mainPanel(type = "tab",
                  tabsetPanel(
                      tabPanel(h3("Normal Distribution"),
                               plotOutput("plot1")),
                      tabPanel(h3("Histogram"), plotOutput("hist")),
                      tabPanel(h3("Probability"),textOutput("Probability")))
        ))
)
