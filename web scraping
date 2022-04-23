#Importing the libraries

install.packages("robotstxt")
library(robotstxt)
install.packages("rvest")
library(rvest)

# Assign a variable to website link

url <- "https://www.imdb.com/chart/top/"

#Check whether the website is allowed to scrap.

path <- paths_allowed(url)


#HTML Elements from website

my_html <- read_html(url)

View(my_html)

#Segregate the tables

my_table <- html_nodes(my_html,"table")
View(my_table)

# Storing a table

movie_table <- html_table(my_table)[[1]]

#View the table

View(movie_table)

#Slicing the columns

movies <- movie_table[,2:3]

View(movies)

#Checking the datatypes

str(movies)

#Export this data to local drive

write.csv(movies,"My_movies.csv")
