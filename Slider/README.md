ui.R is telling shiny to create an html page with the slider. The slider creates a thing with a label. That label receives numeric input value, which is passed to server.R. 
server.R gives instructions back to render the markup giving it the plot and output value, 
which go back with instructions from ui.R on how to mark it up.
