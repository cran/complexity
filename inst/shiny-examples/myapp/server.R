#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$complexity <- renderPrint({

    Amat_1a <- lapply(1:input$nc, function(i) input[[paste0('Amat_a', i)]])
    Amat_2a <- lapply(1:input$nc,function(i) unlist(Amat_1a[[i]]))
    Amat_3a <- do.call(c,Amat_2a)

    Amat_1b <- lapply(1:input$nc, function(i) input[[paste0('Amat_b', i)]])
    Amat_2b <- lapply(1:input$nc,function(i) unlist(Amat_1b[[i]]))
    Amat_3b <- do.call(c,Amat_2b)

    Amat <- c(rbind(Amat_3a,Amat_3b))

    complexity(npar=input$np,Amat)
    })

})


