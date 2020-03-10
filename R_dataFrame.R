#DataFrame is a very important data structure in R. It cotains data of different datatypes.
#It is not uncommon for a data analyst to deal with large datasets and dataframes. 
#Let mtcars is a large dataset.Later,we will create one.Some functions for manipulating dataframes are demonstrated below:
# Call head() on mtcars
head(mtcars)

?mtcars   #read the R documentation about mtcars


# Investigate the structure of mtcars
str(mtcars)    #str() shows you the structure of your data set.
#Applying the str() function will often be the first thing that you do when receiving a new data set or data frame. 

#Let's construct a data frame that describes the main characteristics of eight planets in our solar system
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <-data.frame(name,type,diameter,rotation,rings)

# Check the structure of planets_df
str(planets_df)

# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]

# Select first 5 values of diameter column
planets_df[1:5,"diameter"]

# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
rings_vector

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]

#Adapt the code to select names for planets with rings
planets_df[rings_vector,"names"]
#By now, NASA is probably already flirting with your CV ;-)

# Select planets with diameter smaller than that of Earth
subset(planets_df, diameter < 1)   #diameter includes the relative diameter of planets w.r.t Earth

#order() gives ranked position of each element of variable passed to it(vector)
# Play around with the order function
a <- c(2,8,46,6,7)
order(a)  
a[order(a)]  #reshuffle a

#Now,let's get our hands dirty with the dataset
# Use order() to create positions
positions <- order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions,]

#Hereby,concluding the most important concept,DataFrames in R