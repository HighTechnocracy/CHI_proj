library(shiny)
library(choroplethrMaps)

df_county_demographics <- read.csv("CHIdata2.csv")
for (i in 2:45) {
        df_county_demographics[,i] = as.numeric(df_county_demographics[,i])
}

demographic_choices = colnames(df_county_demographics)[3:ncol(df_county_demographics)]

shinyUI(fluidPage(

  titlePanel("Colorado Health Institute County Data Workbooks VizExplorer"),
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
