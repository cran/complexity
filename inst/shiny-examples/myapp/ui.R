#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Complexity"),
  p("With this application, you can calculate the proportion of permutations in line with an informative hypothesis."),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput("np", label = h4("Number of parameters"), value = 1),
      numericInput("nc", label = h4("Number of constraints"), value = 1),
      lapply(1:100, function(i){
        conditionalPanel(paste0('input.nc >=' ,i),
                         bootstrapPage(
                           div(style="display:inline-block",numericInput(paste0('Amat_a',i), label = h5(paste0('Constraint ',i)),
                                                                         value=1,min=1, max=15, width = '2.5cm')),
                           div(style="display:inline-block",p("<")),
                           div(style="display:inline-block",numericInput(paste0('Amat_b',i), label = "",
                                                                         value=1,min=1, max=15, width = '2.5cm'))))})

    ),

    # Show a plot of the generated distribution
    mainPanel(
      verbatimTextOutput("complexity")
    )
  )
))
