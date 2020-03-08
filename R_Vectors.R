#Vectors are one-dimension arrays that can hold numeric data, 
#character data, or logical data. In other words, 
#a vector is a simple tool to store data.In R, you create a vector with the combine function c().
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE,FALSE,TRUE)
#caseStudy
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24,-50,100,-350,10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday","Tuesday","Wednesday","Thursday","Friday")

# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector using the variable
names(poker_vector) <- days_vector  
names(roulette_vector) <- days_vector

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector

# Print out total_vector
total_vector

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector + roulette_vector

# Total winnings with poker
total_poker <- sum(poker_vector)#sum calculates the sum of all elements of a vector.

# Total winnings with roulette
total_roulette <- sum(roulette_vector) 

# Total winnings overall
total_week <- total_poker + total_roulette

# Print out total_week
total_week

# Check if you realized higher total gains in poker than in roulette 
total_poker > total_roulette

# Define a new variable based on a selection for wednesday
poker_wednesday <- poker_vector[3]

#Assign the poker results of Tues, Wed and Thu to the variable poker_midweek
poker_midweek <- poker_vector[2:4]

# Select poker results for Monday, Tuesday and Wednesday using names
poker_start <- poker_vector[c("Monday","Tuesday","Wednesday")]

# Calculate the average of the elements in poker_start
mean(poker_start)

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Print out selection_vector
selection_vector

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector] #passing logical vector will print only those corresponding elements for which the value is true
