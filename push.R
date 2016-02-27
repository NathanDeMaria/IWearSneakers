library(RPushbullet)

alert <- function(channel, views) {
  pbPost('note', "YouTube Alert", sprintf("%s hit %d views!", channel, views))
}
