# This script is for the Data Analysis in R section of the Practical Computing Skills for Biomedical Researchers boot camp

# load tidyverse library ---------

### Download data and skeleton script from GitHub into project ----

# Read in downloaded data using readr package

# Show the first few lines of the data and the dimensions

# Optionally bring up data in a viewer window.

# Create adults only dataset

# remove the original nh object

# investigate Race (categorical variable)

#create factor variables

### Descriptive Statistics -------------

# measures of the center

# histogram to see distribution

#measures of spread

# summary of dataframe

#descriptive stats for discrete variables

### ** EXERCISE 1 ** --------------
#   ** YOUR TURN **

#A. Calculate the median Income in the NHA dataset

#B. Find the variance of Weight

#C. What is the range of Pulse?

#D. Create a density plot showing BMI colored and faceted by Education level

### T-tests ---------

# Exploratory data analysis

#normality is best assessed using qq plots for each sex

# equal variance, independent samples t-test

# if we didn't have normality met, run wilcox.test

### ** EXERCISE 2 ** ----------
#   ** YOUR TURN **
# Still using the adults (`nha`) dataset, use a test of 2 means to assess whether single or married/cohabitating people (using the RelationshipStatus variable) drink more alcohol (AlcoholYear). (Please feel free to ask for help)

#A. First, create plot to explore the distribution of the variables and the relationship between these two variables.

#B. Next, consider test assumptions to decide what analysis to run.

#C. Run the analysis. Is the association between relationship status and alcohol consumption statistically significant? If so, which group drinks more often?

### ANOVA and LM ----------

# t-test with equal variance for BMI explained by relationship status

# Same question run in a linear model framework

# same question run as an ANOVA

### ANOVA with 3 groups ----------

# levels of smoking status

# linear model for the relationship between smoking status and BMI

#change reference category to Never

# re-create the fit and ANOVA summary

# check out Tukey's multiple comparisons

# plot results

# plot results without NA bc ANOVA automatically removed those

### Linear model with 2 continuous variables -----------

## Create LM fit object for the relationship between height and weight.

#plot these results

# check assumptions of LM

### Multiple regression --------

#t-test for Testosterone ~ PhysActive

#lm for Testosterone ~ PhysActive

#lm for Testosterone ~ PhysActive + Age

#lm for Testosterone ~ PhysActive + Age + Gender

### ** EXERCISE 3 ** ----------
#   ** YOUR TURN **
  
#The `Work` variable is coded "Looking" (n=159), "NotWorking" (n=1317), and "Working" (n=2230).

#A. Fit a linear model of `Income` against `Work`. Assign this to an object called `fit`. What does the `fit` object tell you when you display it directly?
  
#B. Run an `anova()` to get the ANOVA table. Is the model significant?
  
#C. Run a Tukey test to get the pairwise contrasts. (Hint: `TukeyHSD()` on `aov()` on the fit). What do you conclude?
  
#D. Instead of thinking of this as ANOVA, think of it as a linear model. After you've thought about it, get some `summary()` statistics on the fit. Do these results jibe with the ANOVA model?  

### DISCRETE VARIABLE ANALYSES -------
### Contingency tables ------
#cross tabulation of Gender and Diabetes

# Add marginal totals

# Get the proportional table

# proportional table over the first (row) margin only.

#chi square for diabetes and gender

# fisher's exact test for diabetes and gender

# relationship between race and health insurance

# plot for categorical data

### Logistic regression --------

#Look at levels of Race. The default ordering is alphabetical

# Let's relevel that where the group with the highest rate of insurance is "baseline"

#mutate to relevel Race with White as reference category

#logistic regression of insurance ~ race

#logistic regression of Insured with lots of predictors

### ** EXERCISE 4 ** -------
#   ** YOUR TURN **

#1. What's the relationship between diabetes and participating in rigorous physical activity or sports?

#A. Create a contingency table with Diabetes status in rows and physical activity status in columns.

#B. Display that table with margins.

#C. Show the proportions of diabetics and nondiabetics, separately, who are physically active or not.
#    - Is this relationship significant?
#    - Create a mosaic plot to visualize the relationship

#2. Model the same association in a logistic regression framework to assess the risk of diabetes using physical activity as a predictor.
#<!-- - First, make Diabetes a factor variable if you haven't already (`nha$Diabetes <- factor(nha$Diabetes)`). -->

#A. Fit a model with just physical activity as a predictor, and display a model summary.

#B. Add gender to the model, and show a summary.

#C. Continue adding weight and age to the model. What happens to the gender association?

#D. Continue and add income to the model. What happens to the original association with physical activity?