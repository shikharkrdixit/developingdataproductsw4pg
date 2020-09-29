library(shiny)
shinyUI(
    pageWithSidebar(
        headerPanel("Graphs for 'Normal' and 'Exponential' Values"),
        sidebarPanel(
            selectInput("Distribution", "Please Select Distribution Type",
                        choices = c("Normal", "Exponential")),
            sliderInput("sampleSize", "Please select sample size", 
                        min = 100, max = 1200, value = 650, step = 50),
            conditionalPanel(condition = "input.Distribution == 'Normal'",
                             textInput("mean", "Please select the mean", 10),
                             textInput("sd", "Please select the Standard Deviation", 8)),
            conditionalPanel(condition = "input.Distribution == 'Exponential'",
                             textInput("Lamda", "Please select Exponential Lamda", 1))),
        mainPanel(
            plotOutput("myPlot")
        )
    )
)