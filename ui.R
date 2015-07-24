library(shiny)
library(choroplethrMaps)

data(df_county_demographics, package="choroplethr")
demographic_choices = colnames(df_state_demographics)[2:ncol(df_state_demographics)]

shinyUI(fluidPage(

  titlePanel("Colorado Census Explorer"),
  div(HTML("Adapted from a script developed by <a href='http://www.arilamstein.com'>Ari Lamstein</a>.")),

  sidebarLayout(
    sidebarPanel(
      selectInput("demographic1",
                  label = "Select demographic",
                  choices = demographic_choices,
                  selected = "total_population"),
      
      selectInput("demographic2",
                  label = "Select demographic",
                  choices = demographic_choices,
                  selected = "total_population"),
      
      sliderInput(inputId = "num_colors",
                  label   = "Select number of colors",
                  min     = 1,
                  max     = 9,
                  value   = 7)),

    mainPanel(
      plotOutput("countyMap1"),
      plotOutput("countyMap2")
    )
  )
))
