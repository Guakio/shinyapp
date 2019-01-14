#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Lottery Picker"),
                
                sidebarPanel(
                        numericInput('numeric1', 'How many numbers do you need to pick?', 6, min = 1, max = 100, step = 1),
                        numericInput('numeric2', 'How many numbers are possible to pick?', 60, min = 1, max = 200, step = 1),
                        submitButton('Pick')
                ),
                mainPanel(
                        h3('Here is your Pick! Good Luck!'),
                        verbatimTextOutput("pick")
                )
        )
)