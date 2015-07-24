# CHI_proj
<i>Mapping the data from the CHI statewide workbooks</i>

###BACKGROUND
In June 2015, the Colorado Health Institute (http://www.coloradohealthinstitute.org) released an Excel document with several tabs, 64 tabs with data for each county in Colorado, one for the state, one with data sources, and an introductory sheet. The 65 sheets with county-level data and the one with state-level data recorded 43 variables from various sources. The idea was that these variables would help researchers and local public health officials spot "holes" in the delivery of healthcare across the state.

I found this data important and valuable but also difficult to use. I thought the data would be better if it was (1) all on one sheet so that comparisons could be made more readily and (2) able to be visualized, especially in map form.

###PURPOSE
The purpose of this project is to create a Shiny app that will allow researchers and public health officials to usefully visualize the data stored in the CHI worksheets. For the purposes of this course, I have chosen to create a Shiny app that allows the user to input two of the 43 CHI variables to more readily spot specific holes. For example, the user could display the number of nurse practitioners into the upper map and the number who have visited hospital emergency departments. The discrepancies in certain counties should stand out.

###VARIABLES
The following 43 variables are potential options for visualization. The second column below lists CHI's data sources.
<table style="width:100%">
<tr><td>Total population</td><td>Colorado Demography Office</td></tr>
<tr><td>Persons per square mile</td><td>Colorado Demography Office</td></tr>
<tr><td>Under 18</td><td>Colorado Demography Office</td></tr>
<tr><td>Working age adults (19-64)</td><td>Colorado Demography Office</td></tr>
<tr><td>Females of child bearing age (15-44)</td><td>Colorado Demography Office</td></tr>
<tr><td>65 and older</td><td>Colorado Demography Office</td></tr>
<tr><td>Total projected population </td><td>Colorado Demography Office</td></tr>
<tr><td>Projected Under 18</td><td>Colorado Demography Office</td></tr>
<tr><td>Projected Working age adults (19-64)</td><td>Colorado Demography Office</td></tr>
<tr><td>Projected Females of child bearing age (15-44)</td><td>Colorado Demography Office</td></tr>
<tr><td>Projected65 and older</td><td>Colorado Demography Office</td></tr>
<tr><td>Median household income</td><td>American Community Survey</td></tr>
<tr><td>Population at or below the federal poverty line</td><td>American Community Survey</td></tr>
<tr><td>Commercially insured residents</td><td>American Community Survey</td></tr>
<tr><td>Publicly insured residents (includes Medicare, Medicaid and Child Health Plan Plus)</td><td>American Community Survey</td></tr>
<tr><td>Uninsured residents</td><td>American Community Survey</td></tr>
<tr><td>Residents with dental insurance</td><td>Colorado Health Access Survey</td></tr>
<tr><td>Medicaid enrollment (2015)</td><td>Department of Health Care Policy and Financing</td></tr>
<tr><td>Change in Medicaid enrollees between 2014 and 2015</td><td>Department of Health Care Policy and Financing</td></tr>
<tr><td>Children (20 and under) enrolled in Medicaid (2015)</td><td>Department of Health Care Policy and Financing</td></tr>
<tr><td>Children eligible but not enrolled (EBNE) in Medicaid (2012)</td><td>American Community Survey</td></tr>
<tr><td>Children enrolled in Child Health Plan Plus (2014)</td><td>Department of Health Care Policy and Financing</td></tr>
<tr><td>Children eligible but not enrolled (EBNE) in Child Health Plan Plus (2012)</td><td>Department of Health Care Policy and Financing/American Community Survey</td></tr>
<tr><td>Percentage of residents (18+) who have ever been told they have cancer</td><td>Colorado Behavioral Risk Factor Surveillance System</td></tr>
<tr><td>Percentage of residents (18+) who have ever been told they have angina or coronary heart disease</td><td>Colorado Behavioral Risk Factor Surveillance System</td></tr>
<tr><td>Nurse practitioners</td><td>Department of Regulatory Agencies</td></tr>
<tr><td>Registered nurses</td><td>Department of Regulatory Agencies</td></tr>
<tr><td>Physician assistants</td><td>Department of Regulatory Agencies</td></tr>
<tr><td>Dentists</td><td>Department of Regulatory Agencies</td></tr>
<tr><td>Dental hygienists</td><td>Department of Regulatory Agencies</td></tr>
<tr><td>Psychologists</td><td>Department of Regulatory Agencies</td></tr>
<tr><td>Clinical social workers</td><td>Department of Regulatory Agencies</td></tr>
<tr><td>Practicing physicians (2013)</td><td>Medical Quest</td></tr>
<tr><td>Practicing primary care physicians (2013)</td><td>Medical Quest</td></tr>
<tr><td>Number of community health centers (FQHCs)</td><td>Safety Net Database</td></tr>
<tr><td>Number of community mental health centers</td><td>Safety Net Database</td></tr>
<tr><td>Number of community safety net clinics</td><td>Safety Net Database</td></tr>
<tr><td>Number of rural health clinics</td><td>Safety Net Database</td></tr>
<tr><td>Number of hospitals with an emergency department</td><td>Safety Net Database</td></tr>
<tr><td>Number of designated health professional shortage areas</td><td>Health Resources and Services Administration</td></tr>
<tr><td>Visited an emergency department</td><td>Colorado Health Access Survey</td></tr>
<tr><td>Visited a health care facility</td><td>Colorado Health Access Survey</td></tr>
<tr><td>Visited a dentist or dental hygienist</td><td>Colorado Health Access Survey</td></tr>
</table>
All variables are given at the county level, except for the final three (percentages of those that visited emergency departments, healthcare facilities, and dentists). Those are given by health region.

##Acknowledgements
The code was adapted from a Shiny tutorial on census visualizations (http://shiny.rstudio.com/tutorial/lesson5/) and from a census explorer developed by Ari Lamstein (http://www.arilamstein.com/blog/2015/07/09/new-tutorial-make-a-census-explorer/). The original data was aggregated by the Colorado Health Institute and is available here: http://www.coloradohealthinstitute.org/uploads/downloads/Website_Workbooks_7.8.xlsx
