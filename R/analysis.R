library(data.table)
nine_cat_data <- fread("data/processed/911_cat_to_full.tsv")
nine_data <- fread("data/processed/all_2013_911_events.tsv")
nine_data <- merge(nine_cat_data,nine_data,by="Type")
dat <- lapply(Sys.glob("data/311/data*.csv"),function(f){
  d <- fread(f)
  print(f)
  print(names(d))
  return(d[,c("Latitude","Longitude","Police District",
              "Creation Date","Type of Service Request"),
           with=F])
  })
three_data <- rbindlist(dat)
three_data$type <- "311"
nine_data$type <- "911"
full_data <- rbind(three_data,nine_data,fill=T)