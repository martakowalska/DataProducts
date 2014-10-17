library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Body Mass Index Calculation"),
    sidebarPanel(
        h3('Input your measurements'),
        numericInput("wt", "Your weight in pounds", 150),
        numericInput("ht", "Your height in inches", 70)
    ),
    
    mainPanel(
        p('The Body Mass Index (BMI) is a measurement tool that compares your height to your weight and gives you an indication of 
          whether you are overweight, underweight or at a healthy weight for your height.'),
        h4('You entered following weight in pounds:'),
        verbatimTextOutput("owt"), 
        h4('You entered following height in inches:'),
        verbatimTextOutput("oht"),
        h3("Your BMI is:"),
        verbatimTextOutput("obmi"),
        h3("BMI Categories:"),
        p("- Underweight = <18.5"),
        p("- Normal weight = 18.5–24.9"), 
        p("- Overweight = 25–29.9"),
        p("- Obesity = BMI of 30 or greater"),
        h4("More information about this app: ",a("BMI calculator",href="http://rpubs.com/martakowalska/33770"))
    )     
))