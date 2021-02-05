## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(criticalpath)

## -----------------------------------------------------------------------------
# Activities added one by one
schedule <- Schedule$new()
schedule$add_activity(1, "Task 1", 5)
schedule$add_activity(2, "Task 2", 6)
schedule$add_activity(3, "Task 3", 8)
schedule$add_activity(4, "Task 4", 6)
schedule$add_activity(5, "Task 5", 9)
schedule$add_activity(6, "Task 6", 3)
schedule$add_activity(7, "Task 7", 4)
schedule$duration
schedule$activities

# Activities add once for all
activities <- data.frame(
  id        = 1:17,
  name      = paste("a", as.character(1:17), sep=""),
  duration  = c(1,2,2,4,3,3,3,2,1,1,2,1,1,1,1,2,1)
)
schedule <- Schedule$new()
schedule$add_activities(activities)
schedule$duration
schedule$activities


## -----------------------------------------------------------------------------
# First, create an empty schedule
schedule <- Schedule$new()
schedule$title <- "Project 3: Old Carriage House Renovation"
schedule$reference <-
  "VANHOUCKE, Mario. Integrated project management and control:
  first comes the theory, then the practice. Gent: Springer, 2014, p. 11"

# Second, add activities to it
schedule$add_activity(1, "a1" , 2)
schedule$add_activity(2, "a2" , 2)
schedule$add_activity(3, "a3" , 4)
schedule$add_activity(4, "a4" , 3)
schedule$add_activity(5, "a5" , 4)
schedule$add_activity(6, "a6" , 1)
schedule$add_activity(7, "a7" , 1)
schedule$add_activity(8, "a8" , 1)
schedule$add_activity(9, "a9" , 1)
schedule$add_activity(10, "a10", 1)
schedule$add_activity(11, "a11", 3)
schedule$add_activity(12, "a12", 2)
schedule$add_activity(13, "a13", 1)
schedule$add_activity(14, "a14", 1)
schedule$add_activity(15, "a15", 2)
schedule$add_activity(16, "a16", 1)
schedule$add_activity(17, "a17", 1)

# Finaly, add relations to it
schedule$add_relation( 1, 2)
schedule$add_relation( 2, 3)
schedule$add_relation( 3, 4)
schedule$add_relation( 4, 5)
schedule$add_relation( 5, 6)
schedule$add_relation( 6, 7)
schedule$add_relation( 6, 8)
schedule$add_relation( 6, 9)
schedule$add_relation( 7, 10)
schedule$add_relation( 8, 10)
schedule$add_relation( 9, 10)
schedule$add_relation( 10, 11)
schedule$add_relation( 10, 13)
schedule$add_relation( 11, 12)
schedule$add_relation( 12, 15)
schedule$add_relation( 13, 14)
schedule$add_relation( 14, 15)
schedule$add_relation( 15, 16)
schedule$add_relation( 16, 17)
schedule$duration
schedule$activities
schedule$relations

## -----------------------------------------------------------------------------
# Create a schedule
schedule <- Schedule$new()
schedule$title <- "Fictitious Project Example"
schedule$reference <- "VANHOUCKE, Mario. Measuring time:
  improving project performance using earned value management.
  Gent: Springer, 2009, p. 18"

# Add activities and relations to it.
schedule$add_act_rel(  1, "a1" , 0, c(2,3,4))
schedule$add_act_rel(  2, "a2" , 4, c(5))
schedule$add_act_rel(  3, "a3" , 9, c(10))
schedule$add_act_rel(  4, "a4" , 1, c(6))
schedule$add_act_rel(  5, "a5" , 4, c(9))
schedule$add_act_rel(  6, "a6" , 5, c(7))
schedule$add_act_rel(  7, "a7" , 1, c(8,11))
schedule$add_act_rel(  8, "a8" , 7, c(12))
schedule$add_act_rel(  9, "a9" , 8, c(12))
schedule$add_act_rel( 10, "a10", 3, c(12))
schedule$add_act_rel( 11, "a11", 3, c(12))
schedule$add_act_rel( 12, "a12", 0)
schedule$duration
schedule$activities
schedule$relations

## -----------------------------------------------------------------------------

# An empty schedule.
schedule <- Schedule$new()
schedule$duration
schedule$activities
schedule$relations

# A schedule with activities and relations.
activities <- data.frame(
  id        = 1:17,
  name      = paste("a", as.character(1:17), sep=""),
  duration  = c(1,2,2,4,3,3,3,2,1,1,2,1,1,1,1,2,1)
)

relations <- data.frame(
  from = c(1, 1, 2, 2, 2, 3, 3, 3,  3,  4,  5,  6,
           7,  8,  9, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15),
  to   = c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11, 11,
           12, 13, 14, 15, 16, 17, 16, 17, 16, 17, 16, 17, 16, 17)
)
schedule <- Schedule$new(activities, relations)
schedule$title <- "Project 1: Cost Information System"
schedule$reference <- "VANHOUCKE, Mario.
Integrated project management and control:
  first comes the theory, then the practice.
  Gent: Springer, 2014, p. 6"
schedule$duration
schedule$activities
schedule$relations

## -----------------------------------------------------------------------------
# Create a schedule
schedule <- Schedule$new()
schedule$title <- "Fictitious Project Example"
schedule$reference <- "VANHOUCKE, Mario. Measuring time:
  improving project performance using earned value management.
  Gent: Springer, 2009, p. 18"

# Add activities and relations to it.
schedule$add_act_rel(  1, "a1" , 0, c(2,3,4))
schedule$add_act_rel(  2, "a2" , 4, c(5))
schedule$add_act_rel(  3, "a3" , 9, c(10))
schedule$add_act_rel(  4, "a4" , 1, c(6))
schedule$add_act_rel(  5, "a5" , 4, c(9))
schedule$add_act_rel(  6, "a6" , 5, c(7))
schedule$add_act_rel(  7, "a7" , 1, c(8,11))
schedule$add_act_rel(  8, "a8" , 7, c(12))
schedule$add_act_rel(  9, "a9" , 8, c(12))
schedule$add_act_rel( 10, "a10", 3, c(12))
schedule$add_act_rel( 11, "a11", 3, c(12))
schedule$add_act_rel( 12, "a12", 0)
schedule$title
schedule$reference
schedule$duration

## -----------------------------------------------------------------------------
# Create a schedule
schedule <- Schedule$new()
schedule$title <- "Fictitious Project Example"
schedule$reference <- "VANHOUCKE, Mario. Measuring time:
  improving project performance using earned value management.
  Gent: Springer, 2009, p. 18"

schedule$has_any_activity  # FALSE
schedule$nr_activities     # 0

# Add activities and relations to it.
schedule$add_act_rel(  1, "a1" , 0, c(2,3,4))
schedule$add_act_rel(  2, "a2" , 4, c(5))
schedule$add_act_rel(  3, "a3" , 9, c(10))
schedule$add_act_rel(  4, "a4" , 1, c(6))
schedule$add_act_rel(  5, "a5" , 4, c(9))
schedule$add_act_rel(  6, "a6" , 5, c(7))
schedule$add_act_rel(  7, "a7" , 1, c(8,11))
schedule$add_act_rel(  8, "a8" , 7, c(12))
schedule$add_act_rel(  9, "a9" , 8, c(12))
schedule$add_act_rel( 10, "a10", 3, c(12))
schedule$add_act_rel( 11, "a11", 3, c(12))
schedule$add_act_rel( 12, "a12", 0)

schedule$has_any_activity  # TRUE
schedule$nr_activities     # 12

schedule$get_activity(10)
schedule$activities

## -----------------------------------------------------------------------------
activities <- data.frame(
  id        = c( 1,   2,   3,   4 ),
  name      = c("A", "B", "C", "D"),
  duration  = c( 2,   3,   1,   2 )
)
relations <- data.frame(
  from = c(1, 2, 4, 4),
  to   = c(3, 3, 1, 2)
)
schedule <- Schedule$new(activities, relations)
schedule$title <- "A project"
schedule$reference <- "From criticalpath"
gantt <- schedule$gantt_matrix()
gantt
# What is the effort by time period?
colSums(gantt) # 1 1 2 2 1 1
# What is the duration by activities?
rowSums(gantt) # 2 3 1 2
# what is the S curve
cumsum(colSums(gantt))
plot(cumsum(colSums(gantt)), type="l", lwd=3)
xyw <- schedule$xy_gantt_matrix()
xyw
plot(xyw[, 1:2])

## -----------------------------------------------------------------------------
activities <- data.frame(
  id        = 1:17,
  name      = paste("a", as.character(1:17), sep=""),
  duration  = c(1,1,3,2, 2,2,2,1, 4,5,3,3, 4,5,1,5,2)
)

relations <- data.frame(
  from = c(1, 2, 3, 3, 4, 5, 6, 7, 8,  8,  8,
    8,  8,  9, 10, 11, 12, 13, 13, 14, 14, 15, 15),
  to   = c(2, 3, 4, 6, 5, 8, 7, 8, 9, 10, 11,
   12, 13, 14, 14, 14, 14, 14, 15, 16, 17, 16, 17)
)

schedule <- Schedule$new(activities, relations)
schedule$title <- "Project 2: Patient Transport System"
schedule$reference <-
  "VANHOUCKE, Mario. Integrated project management and control:
  first comes the theory, then the practice. Gent: Springer, 2014, p. 9"
#Project duration
schedule$duration # 25
#Activities duration
schedule$activities$duration

new_durations <- c(1,2,5, 4,3, 2,1, 5, 3,5,5,3,4, 2,1, 2,4)
schedule$change_durations(new_durations)

#Project duration
schedule$duration # 31
#Activities duration
schedule$activities$duration


## -----------------------------------------------------------------------------
# Create a schedule
schedule <- Schedule$new()
schedule$title <- "Fictitious Project Example"
schedule$reference <- "VANHOUCKE, Mario. Measuring time:
  improving project performance using earned value management.
  Gent: Springer, 2009, p. 18"

schedule$has_any_relation  # FALSE
schedule$nr_relations      # 0

# Add activities and relations to it.
schedule$add_act_rel(  1, "a1" , 0, c(2,3,4))
schedule$add_act_rel(  2, "a2" , 4, c(5))
schedule$add_act_rel(  3, "a3" , 9, c(10))
schedule$add_act_rel(  4, "a4" , 1, c(6))
schedule$add_act_rel(  5, "a5" , 4, c(9))
schedule$add_act_rel(  6, "a6" , 5, c(7))
schedule$add_act_rel(  7, "a7" , 1, c(8,11))
schedule$add_act_rel(  8, "a8" , 7, c(12))
schedule$add_act_rel(  9, "a9" , 8, c(12))
schedule$add_act_rel( 10, "a10", 3, c(12))
schedule$add_act_rel( 11, "a11", 3, c(12))
schedule$add_act_rel( 12, "a12", 0)

schedule$has_any_relation  # TRUE
schedule$nr_relations      # 14

schedule$relations

## -----------------------------------------------------------------------------
# Create a schedule
schedule <- Schedule$new()
schedule$title <- "Fictitious Project Example"
schedule$reference <- "VANHOUCKE, Mario. Measuring time:
  improving project performance using earned value management.
  Gent: Springer, 2009, p. 18"

# Add activities and relations to it.
schedule$add_act_rel(  2, "a2" , 4, c(5, 12))
schedule$add_act_rel(  3, "a3" , 9, c(10))
schedule$add_act_rel(  4, "a4" , 1, c(6))
schedule$add_act_rel(  5, "a5" , 4, c(9))
schedule$add_act_rel(  6, "a6" , 5, c(7))
schedule$add_act_rel(  7, "a7" , 1, c(8,11))
schedule$add_act_rel(  8, "a8" , 7, c(12))
schedule$add_act_rel(  9, "a9" , 8, c(12))
schedule$add_act_rel( 10, "a10", 3, c(12))
schedule$add_act_rel( 11, "a11", 3, c(12))
schedule$add_act_rel( 12, "a12", 0)

schedule$all_successors(2) # 5, 9, 12
schedule$all_successors(7) # 8, 11, 12
schedule$all_successors(10) # 12

schedule$all_predecessors(2) # nothing
schedule$all_predecessors(7) # 6, 4
schedule$all_predecessors(10) # 3

schedule$is_redundant(2, 5)  #FALSE
schedule$is_redundant(2, 12) #TRUE


## -----------------------------------------------------------------------------
# Create a schedule
schedule <- Schedule$new()
schedule$title <- "Fictitious Project Example"
schedule$reference <- "VANHOUCKE, Mario. Measuring time:
  improving project performance using earned value management.
  Gent: Springer, 2009, p. 18"

# Add activities and relations to it.
schedule$add_act_rel(  1, "a1" , 0, c(2,3,4))
schedule$add_act_rel(  2, "a2" , 4, c(5))
schedule$add_act_rel(  3, "a3" , 9, c(10))
schedule$add_act_rel(  4, "a4" , 1, c(6))
schedule$add_act_rel(  5, "a5" , 4, c(9))
schedule$add_act_rel(  6, "a6" , 5, c(7))
schedule$add_act_rel(  7, "a7" , 1, c(8,11))
schedule$add_act_rel(  8, "a8" , 7, c(12))
schedule$add_act_rel(  9, "a9" , 8, c(12))
schedule$add_act_rel( 10, "a10", 3, c(12))
schedule$add_act_rel( 11, "a11", 3, c(12))
schedule$add_act_rel( 12, "a12", 0)

schedule$topoi_sp()
schedule$topoi_ad()
schedule$topoi_la()
schedule$topoi_tf()

