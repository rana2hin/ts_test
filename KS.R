library(tabulizer)
library(tseries)

dengue <- extract_tables(file = "dengue data.pdf", pages = 2, guess = T)[[1]]

dengue_vector <- c(dengue[-c(1,14),-1])

dengue_ts <- ts(dengue_vector, start = c(2011,1), frequency = 12)



# 
# dengue <- t(dengue)
# 
# dengue <- dengue %>%
#     row_to_names(row_number = 1) # from "janitor" package
# 
# dengue <- rownames_to_column(dengue, "year")
# dengue$year <- as.Date(dengue$year, format = "YYYY")

# c(extract_tables(file = "dengue data.pdf", pages = 2, guess = T)[[1]][-c(1,14),-1])
