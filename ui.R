shinyUI(fluidPage(
        titlePanel("censusVis"),
        
        sidebarLayout(
                sidebarPanel(
                        helpText("Create demographic maps with information from the Colorado Health Institute's Local Data Worksheets"),
                        
                        selectInput("var", 
                                    label = "Choose a variable to display",
                                    choices = c("Total Population", "Population per Square Mile", "Under 18",
                                                "Working Age", "Women of Child-bearing Age", "Over 65"),
                                    selected = "Total Population"),
                        
                        selectInput("region", 
                                    label = "Region of interest:")
                        ),
                
                mainPanel(plotOutput("map"))
        )
))