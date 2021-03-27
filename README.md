# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
[linear_regression.png]  
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle length and ground clearance are two coefficients with a non-random amount of variance to the mpg values in the dataset. 

Is the slope of the linear model considered to be zero? Why or why not?
- Due to the multiple R-squared value of 0.7149 and the P value of 5.35e-11, there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- The R-squared value is roughly 71%, which means that about this frequently the model will predict mpg values accurately. 

## Summary Statistics on Suspension Coils
[screenshot] 
[screenshot] 
Write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 

- As the Total Summary screenshot shows, the mean and median are quite consistent, with a variance that is slightly higher than I might expect based on the first two measures. The Lot Summary dataframe reveals that while Lots 1 and 2 have almost identical means and medians, with low variance, Lot 3 has a very high variance. If the goal of this statisical analysis is to determine if the manufacturing process is consistent across production lots, then based on the significant variance in Lot 3, consistency cannot be determined and the design specification for this Lot 3 is not met. 

## T-Tests on Suspension Coils
Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary. 
- The first t-test was done to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. The p-value for this t-test was 0.06 which is just above statistical significance of 0.05, indicating that there is no statistical difference in PSI across all manufacturing lots from the population mean. Looking at each lot individually, Lots 1 and 2 had similar results in that there was no statistical difference. The t-test completed for Lot 3, however, showed a p-value of 0.042, which does indicate a statistical difference in PSI in this lot from the population mean. 
[4 screenshots] 

## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

- I would be interested in a safety rating metric, and how MechaCar performs against its competition. The National Highway Traffic Safety Administration’s New Car Assessment Program (NCAP) created the 5-Star Safety Ratings Program to provide consumers with information about the crash protection and rollover safety of new vehicles beyond what is required by Federal law. One star is the lowest rating; five stars is the highest. According to the NHTSA, more stars equal safer cars. A simple metric to test may be how well the MechaCar performs in frontal, side and rollover crash tests conducted by NHTSA. The null hypothesis would be: MechaCar does not perform any differently from the competition in frontal, side and rollover crash tests. The alternative hypothesis would be: MechaCar performs at a higher standard from the competition in frontal, side and rollover crash tests. To perform this analysis and compare MechaCar to the competition, a sample of the competition's safety ratings would need to be compared to MechaCar, and to do this a t-test could be performed. Overall safety ratings of both MechaCar and the competition could be compared, as well as the metrics of each type of crash test. 
