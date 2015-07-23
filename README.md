# CHI_proj
<i>Mapping the data from the CHI statewide worksheets</i>

###BACKGROUND
In June 2015, the Colorado Health Initiative released an Excel document with several tabs, 64 tabs with data for each county in Colorado, one for the state, one with data sources, and an introductory sheet. The 65 sheets with county-level data and the one with state-level data recorded 43 variables from various sources. The idea was that these variables would help researchers and local public health officials spot "holes" in the delivery of healthcare across the state.

I found this data important and valuable but also difficult to use. I thought the data would be better if it was (1) all on one sheet so that comparisons could be made more readily and (2) able to be visualized, especially in map form.

###PURPOSE
The purpose of this project is to create a Shiny app that will allow researchers and public health officials usefully visualize the data stored in the CHI worksheets. For the purposes of this course, I have chosen 6 of the 43 variables. If successful, my plan is to expand to the remaining variables. I will also eventually add a percentage calculation function and a side-by-side comparison function.

###VARIABLES
The first six variables in the dataset (POP, PPSQM, LESS18, WA19_64, WCB15_44, MORE65) track population estimates. They are:
* <b>POP</b> = <i>total population</i>
* <b>PPSQM</b> = <i>population per square mile</i>
* <b>LESS18</b> = <i>the population of children (i.e., less than 18 years old)</i>
* <b>WA19_64</b> = <i>the "working age" population (i.e., 18-64 years old)</i>
* <b>WCB15_44</b> = <i>number of women of child-bearing age (i.e., 15-44 years old)</i>
* <b>MORE65</b> = <i>the number of individuals over the age of 65</i>

All variables are given at the countly level, unless "Colorado" is chosen as the region, in which case the data is statewide.
