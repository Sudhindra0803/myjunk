# Section 3: Essential Statistics - Bridge the Gap
# 1. Statistical measures
# 2. Types of variables, Preprocessing - Centering and scaling
# 3. Parametric vs Non parametric, Distributions
# 4. Hypothesis testing, p-Value
# 5. Basic statistical tests - Expand this to multiple lessons
# 6. Project case study 5: Exploratory data analysis - part 1 - Summary statistics, testing means, chi-sq test and anova - all from same dataset.

#1.
Introduction, Types of variables
- Explain from uni-variate and bi-variate perspective:
   What is univariate: Uni + Variate. Studying the characteristics of one variable at a time is univariate
   What is bi-variate: Bi + Variate. Studying the relationship of 2 variables at a time, i.e. how they are changing w.r.t each other and if one variable is influencing the other.

- From uni-variate perspective
  Quantative
   - Continuous
   - Discrete
  Qualitative
   - Categorical
     - nominal
     - ordinal, 
     - Binary, dichotomous, 
  

- From Bi-Variate Perspective
  Y and X variables. Y variable is the one on the LHS of the equation, implying that Y is dependent on X
  Other names of Y variable are:
   - dependent, response, 
   
  Other names of X variable are:
   - Independent, predictor, explanatory, co-variates, control variables.
   
Challenge: 
Looking at str(mtcars) dataset, everythin variable is found to be numeric. From mtcars dataset, identify which variables can be considered as:
 - continuous - mpg, disp, drat, wt, qsec
 - discrete - hp
 - categorical - cyl, vs, am, gear, carb
 - binary / dichotomous - vs, am, 

Note: vs variable is wheter it is V engine or S (straight) engine

#2. 
Univariate Analysis
Statistial Measures: Common jargons explained.
- Continuous Variables
  Explain all these terms with box plot.
   - Mean, 
   - Median, 
   - Mode, (for large populations)
   - range,
   - quartiles,
   - Sd,
   - Variance,
   - Co-efficient of variance/variation,
   - outliers
   - detecting outliers, IQR, formula to find the outliers using box.plot
   - centering, scaling, how to compute z-Scores

- Categorical Variables
   - Compute Frequency table and draw a histogram.
   - Proportions table
  
Challenge:
1. Find the IQR for cars$speed
2. Generate a frequency table for mtcars$cyl
  
#3
Practice Exercise 1
For mtcars$mpg, construct the mean, median, mode, range, 25th and 75th quartiles, sd, variance, co-eff of variance, IQR, possile outliers, center and scale it, compute the z-scores.


#4.
Correlation 
  - Start with excel examples: with two correlated and un correlated series.
  - Compute correlation in Excel, then in R, then compute correlation matrix for a numeric dataset.
  - Correlation does not imply causation.
 --- state 3 types of correlation
 --- explain the pearson correlation and state what the other tw are based on.

#5.
Hypothesis testing, p-Value

Questions:
 - What is hypothesis testing? When and what purpose is it used? : Usually to test if the mean of two samples is same, To test if the mean is same or different from a given value.

 - How are the null and alternate hypothesis generally decided? NULL: no difference.
 
 - What is t-Score and p-Value, When to reject the null-hypothesis?
 
 - Where is this commonly used? Ans: Statistical tests.

#6.
Bi-variate analysis: Correlation Test, Chi-Sq test, ANOVA
Case 1: Cont - Cont: Correlation Test
Case 2: Cat - Cat: Chi-Sq test
Case 3: Cat - Cont: ANOVA

Basic statistical tests: Chi-Squared Test (categorical vs categorical)
Explain the logic in this page:
http://onlinestatbook.com/2/chi_square/contingency.html
Explain that this test can be used to test if there is significant relationship between two categorical variables.

Basic statistical tests: ANOVA a.k.a one-way anova(catergorical vs continuous)
http://yatani.jp/teaching/doku.php?id=hcistats:ANOVA/
The one-way analysis of variance (ANOVA) is used to determine whether there are any significant differences between the means of three or more independent (unrelated) groups. What does that mean to us? 

The practical implication is, we can determine if there is a significant reltionship between a categorical variable's and a continuos variable.
Explain that this test can be used to test if there is significant relationship between a continuous and a categorical variables.
Explain two-way anova if possible: http://yatani.jp/teaching/doku.php?id=hcistats:ANOVA/

Challenge: 
Do a correlation test for cars$speed and cars$dist


#7.
Practice Exercise 2
Solve one problem for each of the three cases.

#8.
Parametric vs Non parametric, Normal Distribution, Box-Cox transformation.
Questions:
 - What is difference between parametric and non-parametric distribution
 - What is a normal distribution, why is it important, application in determining the annual performance rating for many MNCs.
 - What is Skewness, Kurtosis
 - How to make a distribution close to a normal distibution using box-cox transformtion?

Challenge: 
Draw a density plot and calculate the skewness and kurtosis for a normally distributed var.

#9. 
Basic statistical tests 1: One Sample t-Test
Basic statistical tests 2: Wilcoxon Signed Rank Test
Basic statistical tests 3: Two Sample t-Test and Wilcoxon Rank Sum Test

Challenge:
Do a one sample t.test

#10.
Basic statistical tests 4: Shapiro Test
Basic statistical tests 5: Kolmogorov Smirnov Test - Test if two samples have same distriution.

Challenge:
Check if a variable is normally distributed.

#11. 
Practice Exercise 2: Do a kolmogorov test and two-sample t-test

#12.
Basic Statistical tests 9: runs test in {lawstat}
To test for randomness of a variable. If it is a timeseries, can be tested using durbin watson test. dwtest {lmtest}

Challenge:
Do a runs test on a random generated variable.

# 13.
Project case study.
Given a dataset with 1 Y and multiple X variables, answer the following questions:
1. Identify if your Y is categorical or continuous
2. What about the X's. Are they categorical / continuous / discrete ?
3. Calculate and study the following summary statistics for all X's
 - For Continuous:
  - Mean
  - Median
  - Mode
  - standard deviation
  - IQR
  - Skewness
  - Kurtosis
 - For Categorical
  - Compute the frequency table
  - Compute the proportions table
  - Find the mean of Y for each level in X.

4. Find out the outliers in a given continuous X variable. Draw a boxplot and visualise it.

boxplot.stats(x)$out : Shows the values of outliers

y <- x[!x %in% boxplot.stats(x)$out] will remove all outliers from x, where x is continuous.

5. Find the outliers in Y, for a given categorical X variable
a <- boxplot(mpg ~ cyl, data=mtcars)
a$out

6. Is any of the continuous X highly skewed (> 1), if yes, create a box-cox transformed variable.

7. Which are the top 3 X's that has highest correlation with Y and what is the value of correlation?

8. Study the correlations between the X's and make inferences about which variables have high/low correlations.

9. Which of the X's have a 'significant' relationship with the Y? 
 (which of the X's are significant?)
 - Do it for Categorical X's and continuous X's separately.
 
 











# Rajesh
# Understanding the nature of the variables
Types of variables 1. cat   2. Cont,   3. ord   4. nom
cat - chi.sq
con - normal
ord - poisson

Have a data set that has a mix of all types of vars. Find what type of variable is it in each column.

# Univariate Analysis
##--------------------
We use univariate statistics to understand each variable in a dataset.
Having know the nature of the variable, we do the corresponding univariate statistical analysis to understand about that variable.

Continuous : Mean, meadian, coeff of variation etc
Categorical: Frequency tables, histogram
Ordinal: If < 10 levels, go for frequency tables. If > 10 orders, go for summary statistics.
Nominal: Like categorical variable


# Bi Variate Analysis:
##--------------------
Pick up 2 variables.
Case 1: Both the vars are continuous.
=> Do correlation test
=> t-test , wilcoxon signed rank
=> 

Case 2: Both are categorical variables:
=> Build a contingency table
=> Do Chi-sq test and determine if they are interrelated.

Case 3: Categorical and Continuous
=> Do an ANOVA to determine if they are interrelated. 


# Testing of hypotheses
# ----------------------
Test of means , test of proportions













 