# Reading in my dataset as a csv 
read_csv("SterettD2M.csv")
# Assigning this function to "D2Mdata"
D2Mdata <- read_csv("SterettD2M.csv")
# Assigning test_df as the name of this dataframe/tibble
test_df <-D2Mdata
# Writing out the test df
write_csv(test_df,"D2M")
