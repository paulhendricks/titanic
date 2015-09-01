library(dplyr)

src <- "https://www.kaggle.com/c/titanic/data/download/gendermodel.csv"
lcl <- "data-raw/gendermodel.csv"

# if (!file.exists(lcl)) {
#   download.file(src, lcl)
# }

raw <- read.csv(lcl, stringsAsFactors = FALSE)
titanic_gender_model <- raw

save(titanic_gender_model, file = "data/titanic_gender_model.rda")
