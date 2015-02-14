library(UsingR)
data(galton)

shinyServer(
  function(input,output){
    output$newHist <- renderPlot({
      hist(galton$child, xlab='child height', col='lightblue',main='histogram')
      mean <- input$mean
      lines(c(mean,mean),c(0,200),col="red",lwd=5)
      mse <- mean((galton$child - mean)^2)
      text(63,150,paste("mu = ", mean))
      text(63,140, paste("Mean Squared Error = ", round(mse,2)))    
    })
  }     
)
