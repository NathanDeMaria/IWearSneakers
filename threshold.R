threshold_file <- 'threshold.rds'

get_threshold <- function() {
  readRDS(threshold_file)
}

set_threshold <- function(new_threshold) {
  saveRDS(new_threshold, threshold_file)
}

list(get=get_threshold, set=set_threshold)
