library(shiny)
shinyUI(
 pageWithSidebar(
  #Application title
  headerPanel("Diabetes Prediction"),
  
  sidebarPanel(
    numericInput('glucose','Glucose mg/dl', 90,min=50,max=200,step=5),   
    submitButton('Submit') #Make a gobutton if you want it to wait until they press
  ),
  mainPanel(
    h3('Results of Prediction'),
    h4('You entered:'),
    verbatimTextOutput("inputValue"), 
    h4('Which resulted in a prediction of:'),
    verbatimTextOutput('prediction')
