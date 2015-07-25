# CHI_proj
<i>Mapping the data from the Colorado Health Institute County Data Workbooks</i>

###How to Use This Shiny Application

On the right hand side, choose one of the 43 variables to be displayed on the upper map. Below that, choose one of the 43 variables to display on the lower map (they can be the same variable, if you wanted to do that for some reason.) Below that, on the slider, choose how many gradient levels the map will display. The shade of the gradient and its corresponding numerical value will appear in the legend on the left side of each map. Be careful of those numbers. Some figures returned percentages, others return absolute numbers. 

What each variable refers to and its sources can be found in the README.md file.

##Acknowledgements
The code was adapted from a Shiny tutorial on census visualizations (http://shiny.rstudio.com/tutorial/lesson5/) and from a census explorer developed by Ari Lamstein (http://www.arilamstein.com/blog/2015/07/09/new-tutorial-make-a-census-explorer/). The original data was aggregated by the Colorado Health Institute and is available here: http://www.coloradohealthinstitute.org/uploads/downloads/Website_Workbooks_7.8.xlsx. The mapping package was choroplethr 3.1.0: http://cran.r-project.org/web/packages/choroplethr/index.html
