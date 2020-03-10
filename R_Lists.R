#List is some kind of super datatype as it can store any piece of information.It is more like our to-do list.
#List in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way.
#These objects can be matrices, vectors, data frames, even other lists, etc.
#Cool..Let's get our hands dirty

#Constructing a list... 
# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]   #just to demonstrate(mtcars is a name of dataset not loaded here)

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)  #list() is used to construct a list

#List components assigned with names

# Adapt list() call to give the components names
my_list <- list(vec = my_vector,mat = my_matrix,df = my_df)

#my_list <- list(your_comp1, your_comp2)
names(my_list) <- c("name1", "name2")

#Creating a named list
mov <- "The Shining"     #first component of list
act <- c("Jack Nicholson","Shelley Duvall","Danny Lloyd","Scatman Crothers") #second list component
scores <- c(4.5,4.0,5.0) 
sources <- c("IMDb1","IMDb2","IMDb3")  
comments <- c("Best Horror Film I Have","A truly brilliant and scary film from Stanley Kubrick","A masterpiece of psychological horror")
rev <- data.frame(scores,sources,comments) #third component of list(DataFrame)
rev

shining_list <- list(moviename = mov, actors = act,reviews = rev)
shining_list
#Let's look at how to select elements for lists. 
# Print out the vector representing the actors
shining_list[[2]]

# Print the second element of the vector representing the actors
shining_list[[2]][2]

##Juat to recap, define the comments and scores vectors
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot") 

# Save the average of the scores vector as avg_review  
avg_review <- mean(scores)

# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(scores,comments)


# Create and print out a list, called departed_list
departed_list <- list(movie_title,movie_actors,reviews_df,avg_review)
print(departed_list)