<!-- README.md is generated from README.Rmd. Please edit that file -->
titanic
=======

[![Build Status](https://travis-ci.org/paulhendricks/titanic.png?branch=master)](https://travis-ci.org/paulhendricks/titanic) [![Build status](https://ci.appveyor.com/api/projects/status/rux3xlfcdhuxuw4t/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/titanic/branch/master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/titanic)](http://cran.r-project.org/package=titanic) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/titanic)](http://cran.rstudio.com/package=titanic) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`titanic` is an R package containing data sets providing information on the fate of passengers on the fatal maiden voyage of the ocean liner "Titanic", summarized according to economic status (class), sex, age and survival. These data sets are often used as an introduction to machine learning on [Kaggle](https://www.kaggle.com/). More details about the competition can be found [here](https://www.kaggle.com/c/titanic), and the original data sets can be found [here](https://www.kaggle.com/c/titanic/data).

Installation
------------

You can install:

-   the latest released version from CRAN with

    ``` r
    install.packages("titanic")
    ```

-   the latest development version from github with

    ``` r
    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }
    devtools::install_github("paulhendricks/titanic")
    ```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/paulhendricks/titanic/issues).

API
---

``` r
library(titanic)
knitr::kable(head(titanic_train))
```

|  PassengerId|  Survived|  Pclass| Name                                                | Sex    |  Age|  SibSp|  Parch| Ticket           |     Fare| Cabin | Embarked |
|------------:|---------:|-------:|:----------------------------------------------------|:-------|----:|------:|------:|:-----------------|--------:|:------|:---------|
|            1|         0|       3| Braund, Mr. Owen Harris                             | male   |   22|      1|      0| A/5 21171        |   7.2500|       | S        |
|            2|         1|       1| Cumings, Mrs. John Bradley (Florence Briggs Thayer) | female |   38|      1|      0| PC 17599         |  71.2833| C85   | C        |
|            3|         1|       3| Heikkinen, Miss. Laina                              | female |   26|      0|      0| STON/O2. 3101282 |   7.9250|       | S        |
|            4|         1|       1| Futrelle, Mrs. Jacques Heath (Lily May Peel)        | female |   35|      1|      0| 113803           |  53.1000| C123  | S        |
|            5|         0|       3| Allen, Mr. William Henry                            | male   |   35|      0|      0| 373450           |   8.0500|       | S        |
|            6|         0|       3| Moran, Mr. James                                    | male   |   NA|      0|      0| 330877           |   8.4583|       | Q        |

``` r
knitr::kable(head(titanic_test))
```

|  PassengerId|  Pclass| Name                                         | Sex    |   Age|  SibSp|  Parch| Ticket  |     Fare| Cabin | Embarked |
|------------:|-------:|:---------------------------------------------|:-------|-----:|------:|------:|:--------|--------:|:------|:---------|
|          892|       3| Kelly, Mr. James                             | male   |  34.5|      0|      0| 330911  |   7.8292|       | Q        |
|          893|       3| Wilkes, Mrs. James (Ellen Needs)             | female |  47.0|      1|      0| 363272  |   7.0000|       | S        |
|          894|       2| Myles, Mr. Thomas Francis                    | male   |  62.0|      0|      0| 240276  |   9.6875|       | Q        |
|          895|       3| Wirz, Mr. Albert                             | male   |  27.0|      0|      0| 315154  |   8.6625|       | S        |
|          896|       3| Hirvonen, Mrs. Alexander (Helga E Lindqvist) | female |  22.0|      1|      1| 3101298 |  12.2875|       | S        |
|          897|       3| Svensson, Mr. Johan Cervin                   | male   |  14.0|      0|      0| 7538    |   9.2250|       | S        |
