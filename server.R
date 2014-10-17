bmi_index <- function(wt, ht) {
    round((wt/(ht^2))*703,1)
}

shinyServer(
    function(input, output) {
        output$owt <- renderPrint({input$wt})
        output$oht <- renderPrint({input$ht})
        output$obmi <- renderPrint({bmi_index(input$wt, input$ht)})
    }
)


