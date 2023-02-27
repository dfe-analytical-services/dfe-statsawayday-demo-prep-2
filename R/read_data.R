# Script where we provide functions to read in the data file(s).

# IMPORTANT: Data files pushed to GitHub repositories are immediately public.
# You should not be pushing unpublished data to the repository prior to your
# publication date. You should use dummy data or already-published data during
# development of your dashboard.

# In order to help prevent unpublished data being accidentally published, the
# template will not let you make a commit if there are unidentified csv, xlsx,
# tex or pdf files contained in your repository. To make a commit, you will need
# to either add the file to .gitignore or add an entry for the file into
# datafiles_log.csv.

read_data <- function(file = "data/stats_awayday_demo.csv") {
  # This reads in an example file. For the purposes of this demo, we're using the
  # latest LA expenditure data downloaded from the EES release.
  teacher_data <- read.csv(file)
  # The time period column name has some non-ascii characters so we're just going to rename it here.
  teacher_data <- teacher_data %>% mutate(
    time_period = as.numeric(paste0("20", substr(format(time_period), 5, 6)))
  )
  return(teacher_data)
}
