url <- "https://www.imdb.com/search/title/?groups=top_250&sort=user_rating"

path <- paths_allowed(url)

my_html <- read_html(url)

View(my_html)

# Segregating the name of the movie

Name <- my_html%>%html_nodes(".lister-item-header a")%>%html_text()

View(Name)


#Put in a data frame
#Creating a data frame

imdb.ratings <- data.frame(Name)
View(imdb.ratings)
© 2022 GitHub, Inc.
Terms
Privacy
