library(rvest) #rvest library needed to extract table from wiki page
library(tidyr) #tidyr to separate other columns

#The function below extracts the data from the wiki page
CovidData <- function(){
        
      url <- "https://endcov.ph/cases/"
      data <- url %>%
              read_html %>%
              html_nodes("table")
      html_table(data[1])
      
}

x <- as.data.frame(CovidData())
names(x) <- c("Case", "Nationality", "Status", "Transmission", "Date", "Info")
Covid <- separate(x, col = Case, into = c("Case", "Age", "Sex"), sep = "\n")
View(Covid)
  


