---
title       : Vizualizing Colorado's Public Health Data
subtitle    : Colorado Health Institute County Data Workbooks
author      : Jim Pavlik
job         : Program and Policy Analyst, BHWP
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Background

In July 2015, The Colorado Health  Institute released an Excel spreadsheet and accompanying brief. This spreadhsheet contained over 60 worksheets, each documenting over 50 variables for each of Colorado's 64 counties. 

The data contained in this spreadsheet could be a valuable tool for politicians, public health officials and researchers to spot gaps in the health outcomes and access to health services for Coloradans. But the format made it very difficult to use.

So I used the Developing Data Products class as an excuse to see if I could not only make maps of this data, but do so in a moderately interactive way, allowing users, through Shiny, to make their own maps.

--- .class #id 

## Developing an Idea

While maps alone would make the data easier to read and use, being able to compare the data against one another seemed even more useful.

So I adapted some code developed by Ari Lamstein to display two maps. This would allow the curious to pit two of the variables against one another to spot gaps in nees vs access. For example, a user could put "Number that Visisted a Dentist" in the upper map and immediately compare it to "Number of Dentists" to see which dentists offices might be overloaded.

--- .class #id 


## By the Way:

Here is a chunk of R code that does something in order to satisfy this final assignment requirement.


```r
x <- "Hello World!"
x
```

```
## [1] "Hello World!"
```

Well, "Hello" to you, chunk of R code. 

And good-bye to you, Peer Evaluator. I hope you like my app.


