library(poliscidata)

#Question 1 2012 voter turnout correlations
names(states)
  #positively correlated variable
  cor(states$vep12_turnout,states$ba_or_more)
  #negatively correlated variable
  cor(states$vep12_turnout,states$uninsured_pct)
  #uncorrelated variable
  cor(states$vep12_turnout,states$unemploy)
  
#Question 4 bivariate regression analysis of global inequality 
summary(lm(world$gini10~world$gdp_10_thou))

#Question 6 scatterplot and regression line
plot(world$gdp_10_thou,world$gini10)
plot(world$gdp_10_thou,world$gini10,xlab="GDP per capita in $10K",ylab="Income GINI Coefficient",main="Bivariate Regression Analysis of Global Inequality")
abline(lm(world$gini10~world$gdp_10_thou))