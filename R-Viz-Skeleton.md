Using R to Visualize Data
================
Data Services @ HSL
8/2/2018

Load library ----------------------------------
-----------------------------------------------

Download data and skeleton script from GitHub into project
----------------------------------------------------------

Go to GitHub [repo](https://github.com/mariekekjones/BIMS-bootcamp) to get these materials

Explain skeleton script \#' and spinning `Command + Shift + K`

NHANES data
-----------

Let's read in the data to an object called `nh` and take a look with `View`. Remember, we need to load both the dplyr and readr packages (or tidyverse) for efficiently reading in and displaying this data.

Read in downloaded data using `read_csv()` from {readr} package Show the first few lines of the data and the dimensions Optionally bring up data in a viewer window.

dplyr review
------------

Access dplyr cheat sheet from `Help` menu

dplyr verbs 1. `filter()` 1. `group_by()` 1. `summarize()`

dplyr takes a tibble dataframe as its first argument and then a logical condition to meet as the second argument.

-   `==`: Equal to
-   `!=`: Not equal to
-   `>`, `>=`: Greater than, greater than or equal to
-   `<`, `<=`: Less than, less than or equal to

If you want to satisfy *all* of multiple conditions, you can use the "and" operator, `&`. The "or" operator `|` (the pipe character, usually shift-backslash) will return a subset that meet *any* of the conditions.

Let's use filter to return rows where the person was elderly (defined as &gt;= 80 years old) \#\# Using the pipe `%>%` or `Control + Shift + M`

`head()` without pipe `head()` with pipe Now let's use the pipe operator with filter to subset for elderly people &gt;= 80 years old without pipe with pipe \#\# Nesting v. %&gt;%

Let's say we want to see the mean height, grouped by Race, only for adults.

without pipe with pipe with pipe arranged in order

### \*\* EXERCISE 1 ** ** YOUR TURN \*\*

A. How many observations are there of children (&lt; 18 years old)?

B. How many cases of obese children are there (BMI &gt;= 30)?

C. Use `filter()`, `group_by()` and `summarize()` to find the mean BMI by Smoking Status for only Adults who have Diabetes. Do diabetic smokers or non-smokers have higher BMI?

ggplot2
-------

allows you to build a plot layer-by-layer by specifying:

-   a **geom**, which specifies how the data are represented on the plot (points, lines, bars, etc.),
-   **aesthetics** that map variables in the data to axes on the plot or to plotting size, shape, color, etc.,
-   **facets**, which we've already seen above, that allow the data to be divided into chunks on the basis of other categorical or continuous variables and the same plot drawn for each chunk.

### Scatterplots

Age (X) against Height (Y) (continuous X, continuous Y)
