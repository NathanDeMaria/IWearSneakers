config <- source('config.R', local = T)$value
get_views <- source('views.R', local = T)$value
push <- source('push.R', local = T)$value
threshold <- source('threshold.R', local = T)$value

channel <- config('channel')
views <- get_views(channel, config('key'))
if(views > threshold$get()) {
  push(channel, views)
  next_threshold <- (floor(views / 1000) + 1) * 1000
  threshold$set(next_threshold)
}
