library(choroplethr)
library(choroplethrMaps)
library(ggplot2)
library(mapproj)
counties <- read.csv("data/CHIdata2.csv")

shinyServer(
        function(input, output) {
                output$map <- renderPlot({
                        data <- switch(input$var, 
                                       "Total Population" = counties$value,
                                       "Population per sq.mi." = counties$value,
                                       "Under 18" = counties$value,
                                       "Working Age" = counties$value,
                                       "Women of Child-bearing Age" = counties$value,
                                       "Over 65" = counties$value)
                        
                        color <- switch(input$var, 
                                        "Total Population" = "darkgreen",
                                        "Population per sq.mi." = "black",
                                        "Under 18" = "darkorange",
                                        "Working Age" = "darkorange",
                                        "Women of Child-bearing Age" = "darkorange",
                                        "Over 65" = "darkviolet")
                        
                        legend <- switch(input$var, 
                                         "Total Population" = "Total Population",
                                         "Population per sq.mi." = "Pop. per square mile",
                                         "Under 18" = "Population under age 18",
                                         "Working Age" = "Working Age Pop. (18-64)"
                                         "Women of Child-bearing Age" = "Number of Women of Child-Bearing Age, (15-44)"
                                         "Over 65" = "Population over 65")
                        
                        percent_map(var = data, 
                                    color = color, 
                                    legend.title = legend, 
                                    max = input$range[2], 
                                    min = input$range[1])
                })
        }
)