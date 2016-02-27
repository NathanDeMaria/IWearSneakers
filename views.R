library(httr)

get_views <- function(channel, key) {
  root <- 'https://www.googleapis.com/youtube/v3/channels?part=statistics&forUsername=%s&key=%s'
  request_url <- sprintf(root, channel, key)
  response <- GET(request_url)
  result <- content(response)
  as.numeric(result$item[[1]]$statistics$viewCount)
}
