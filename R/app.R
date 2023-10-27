# Modified from https://shiny.rstudio.com/tutorial/written-tutorial/lesson1/

#' @import shiny shinyWidgets
library(shiny)
library(shinyWidgets)

# Define UI for app that draws a histogram ----
ui <- fluidPage(

  # App title ----
  titlePanel("Log-Logistic Distribution"),

  # Sidebar layout with input and output definitions ----
  sidebarLayout(

    # Sidebar panel for inputs ----
    sidebarPanel(

      # Input sliders
      shinyWidgets::sliderTextInput(inputId = "n",
                  label = "Sample size:",
                  choices = c(10, 100, 1000, 10000, 100000),
                  selected = 10000,
                  grid = T),
      sliderInput(inputId = "alpha",
                  label = "Alpha",
                  min = 0,
                  max = 5,
                  value = 3,
                  step = 0.01),
      sliderInput(inputId = "beta",
                  label = "Beta",
                  min = 0,
                  max = 5,
                  value = 4,
                  step = 0.01)

    ),


    # Main panel for displaying outputs ----
    mainPanel(

      # Output: Histogram ----
      plotOutput(outputId = "distPlot")

    )
  )
)

# Define server logic required to draw a histogram ----
server <- function(input, output) {


  output$distPlot <- renderPlot({

    x <- rloglogis(input$n, input$alpha, input$beta)

    hist(x, breaks = 30, col = "#75AADB", border = "black",
         main = "Histogram of Log-Logistic distribution",
         sub = paste("with parameters alpha = ", input$alpha, " and beta = ", input$beta))

  })

}

# Create Shiny app ----
shinyApp(ui = ui, server = server)
