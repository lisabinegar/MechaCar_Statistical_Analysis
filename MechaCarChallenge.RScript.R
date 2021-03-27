# Deliverable 1

# load dplyr package
library(dplyr)

#read MechaCar file
MechaCar <- read.csv(file='MechaCar_mpg.csv')

# Import and read in the MechaCar_mpg.csv file as a dataframe.
View(MechaCar)

# Perform linear regression using lm() function
MechaCar.lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

#Use summary() function
summary(MechaCar.lm)

# Deliverable 2

#read Suspension_Coil file
suspcoil <- read.csv(file='Suspension_Coil.csv')
View(suspcoil)

#use the summarize function and create a total_summary dataframe
total_summary <- suspcoil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')
View(total_summary)

#create a lot_summary dataframe
lot_summary <- suspcoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')
View(lot_summary)

# Deliverable 3
# Perform t-test comparing lots against mean PSI
t.test(suspcoil$PSI, mu=1500)

# Perform 3 t-tests that compare each lot against mean PSI
# Lot 1
Lot1_PSI <- subset(suspcoil, Manufacturing_Lot == "Lot1")
t.test(Lot1_PSI$PSI, mu=1500)

# Lot 2
Lot2_PSI <- subset(suspcoil, Manufacturing_Lot =="Lot2")
t.test(Lot2_PSI$PSI, mu=1500)

# Lot 3
Lot3_PSI <- subset(suspcoil, Manufacturing_Lot == "Lot3")
t.test(Lot3_PSI$PSI, mu=1500)
