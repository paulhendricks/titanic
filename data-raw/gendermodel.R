library(dplyr)

src <- "https://www.kaggle.com/c/titanic/data"
lcl <- "data-raw/gendermodel.csv"

if (!file.exists(lcl)) {
  download.file(src, lcl)
}

raw <- read.csv(lcl)
titanic_gender_model <- raw

save(airlines, file = "data/titanic_gender_model.rda")
