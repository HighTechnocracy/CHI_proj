library(shiny)
library(acs)
library(choroplethr)

shinyServer(function(input, output) {

  output$countyMap1 = renderPlot({
    df_county_demographics$value  = df_county_demographics[, input$demographic1]
    county_choropleth(df_county_demographics, state_zoom = "colorado", num_colors = input$num_colors)
  })
  
  output$countyMap2 = renderPlot({
    df_county_demographics$value  = df_county_demographics[, input$demographic2]
    county_choropleth(df_county_demographics, state_zoom = "colorado", num_colors = input$num_colors)
  })
  

})
