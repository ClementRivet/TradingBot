library(jsonlite)

current_data <- fromJSON("https://api.bittrex.com/api/v1.1/public/getmarketsummary?market=btc-neo")$result

for(i in 1:999){
  temp_data <- fromJSON("https://api.bittrex.com/api/v1.1/public/getmarketsummary?market=btc-neo")$result
  Sys.sleep(5)
  current_data <- rbind(current_data, temp_data)
}


View(current_data)