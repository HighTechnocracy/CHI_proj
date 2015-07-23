shinyUI(fluidPage(
        titlePanel("censusVis"),
        
        sidebarLayout(
                sidebarPanel(
                        helpText("Create demographic maps with information from the Colorado Health Institute's Local Data Worksheets"),
                        
                        selectInput("var", 
                                    label = "Choose a variable to display.",
                                    choices = c("Total Population", "Population per sq.mi.", "Under 18",
                                                "Working Age", "Women of Child-bearing Age", "Over 65"),
                                    selected = "Total Population"),
                        
                        selectInput("region", 
                                    label = "Region of interest:",
                                    choices = c("COLORADO", "Adams", "Alamosa", "Arapahoe", "Archuleta", 
                                                 "Baca", "Bent", "Boulder", "Broomfield", "Chaffee", 
                                                 "Cheyenne", "Clear Creek", "Conejos”, “Costilla", 
                                                 "Crowley", "Custer", "Delta", "Denver", "Dolores", 
                                                 "Douglas", "Eagle", "El Paso", "Elbert", "Fremont", 
                                                 "Garfield", "Gilpin", "Grand", "Gunnison", "Hinsdale", 
                                                 "Huerfano", "Jackson", "Jefferson", "Kiowa", "Kit Carson", 
                                                 "La Plata", "Lake", "Larimer", "Las Animas", "Lincoln", 
                                                 "Logan", "Mesa", "Mineral", "Moffat", "Montezuma", 
                                                 "Montrose", "Morgan", "Otero", "Ouray", "Park", "Phillips", 
                                                 "Pitkin", "Prowers", "Pueblo", "Rio Blanco", "Rio Grande", 
                                                 "Routt", "Saguache", "San Juan", "San Miguel", "Sedgwick", 
                                                 "Summit", "Teller", "Washington", "Weld", "Yuma"),
                                    selected = "COLORADO"
                        ),
                
                mainPanel(plotOutput("map"))
        )
))