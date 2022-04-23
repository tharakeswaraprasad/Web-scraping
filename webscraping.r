url <- "https://en.wikipedia.org/wiki/World_population"

path <- paths_allowed(url)

my_html <- read_html(url)

my_table <- html_nodes(my_html,"table")

world_population <- html_table(my_table)[[5]]

View(world_population)

Pop <- world_population[,1:4]

View(Pop)

write.csv(Pop,"top10 populus country.csv")
