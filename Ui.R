library(UsingR)
shinyUI(pageWithSidebar(
    headerPanel("Data cars"),
    sidebarPanel(
      numericInput('id1', 'Enter distance', 6, min = 4, max = 120, step = 1),
      submitButton('Submit'),
#       checkboxGroupInput("id2", "Checkbox",
#                          c("Value 1" = "1")),
      numericInput('speed', 'Enter speed', 6, min = 4, max = 25, step = 1),
      submitButton('Submit')            
  ),
    mainPanel(
      p("Documentation:",a("Help page",href="help_page.html")),
      plotOutput('newHist'),
      plotOutput('newHist1')      
       
    )
  ))
