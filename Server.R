library(UsingR)
data(cars)
shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      hist(cars$dist, xlab='Stopping distance', col='lightblue',main='Histogram')
      id1 <- input$id1
      lines(c(id1, id1), c(0, 25),col="blue", lwd=5)
      mse <- mean((cars$speed - id1)^2)
# Mean Square Error (MSE)       
      text(2, 18, paste("dist =", id1))
      text(18, 18, paste("MSE = ", round(mse, 2)))
    })
#     output$oid2 <- renderPrint({input$id2})
#     output$ospeed <- renderPrint({input$speed})
    output$newHist1 <- renderPlot({
      hist(cars$speed, xlab='speed', col='lightblue',main='Histogram')
      speed <- input$speed
      lines(c(speed, speed), c(0, 25),col="red", lwd=5)
      mse <- mean((cars$speed - speed)^2)
      text(4, 12, paste("speed =", speed))
      text(8, 12, paste("MSE = ", round(mse, 2)))
    })
  }
  
)
