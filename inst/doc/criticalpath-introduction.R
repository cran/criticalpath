## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(criticalpath)

## -----------------------------------------------------------------------------
sch <- sch_new() %>% 
  sch_title("Project 1: Cost Information System") %>% 
  sch_reference("VANHOUCKE, Mario.
    Integrated project management and control:
    first comes the theory, then the practice.
    Gent: Springer, 2014, p. 6") %>% 
  sch_add_activities(
    id        = 1:17,
    name      = paste("a", as.character(1:17), sep=""),
    duration  = c(1L,2L,2L,4L,3L,3L,3L,2L,1L,1L,2L,1L,1L,1L,1L,2L,1L)
  ) %>% 
  sch_add_relations(
  from = c(1L, 1L, 2L, 2L, 2L, 3L, 3L, 3L,  3L,  4L,  5L,  6L,
           7L,  8L,  9L, 10L, 11L, 11L, 12L, 12L, 13L, 13L, 14L, 14L, 15L, 15L),
  to   = c(2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L, 11L, 11L,
           12L, 13L, 14L, 15L, 16L, 17L, 16L, 17L, 16L, 17L, 16L, 17L, 16L, 17L)
  ) %>% 
  sch_plan()

sch_duration(sch)
sch_activities(sch)
sch_relations(sch)

## -----------------------------------------------------------------------------
sch <- sch_new() %>% 
  sch_title("Project 3: Old Carriage House Renovation") %>% 
  sch_reference(
  "VANHOUCKE, Mario. Integrated project management and control:
  first comes the theory, then the practice. Gent: Springer, 2014, p. 11") %>% 
  sch_add_activity( 1L, "a1" , 2L) %>% 
  sch_add_activity( 2L, "a2" , 2L) %>% 
  sch_add_activity( 3L, "a3" , 4L) %>% 
  sch_add_activity( 4L, "a4" , 3L) %>% 
  sch_add_activity( 5L, "a5" , 4L) %>% 
  sch_add_activity( 6L, "a6" , 1L) %>% 
  sch_add_activity( 7L, "a7" , 1L) %>% 
  sch_add_activity( 8L, "a8" , 1L) %>% 
  sch_add_activity( 9L, "a9" , 1L) %>% 
  sch_add_activity(10L, "a10", 1L) %>% 
  sch_add_activity(11L, "a11", 3L) %>% 
  sch_add_activity(12L, "a12", 2L) %>% 
  sch_add_activity(13L, "a13", 1L) %>% 
  sch_add_activity(14L, "a14", 1L) %>% 
  sch_add_activity(15L, "a15", 2L) %>% 
  sch_add_activity(16L, "a16", 1L) %>% 
  sch_add_activity(17L, "a17", 1L) %>% 
  sch_add_relation( 1L,  2L) %>% 
  sch_add_relation( 2L,  3L) %>% 
  sch_add_relation( 3L,  4L) %>% 
  sch_add_relation( 4L,  5L) %>% 
  sch_add_relation( 5L,  6L) %>% 
  sch_add_relation( 6L,  7L) %>% 
  sch_add_relation( 6L,  8L) %>% 
  sch_add_relation( 6L,  9L) %>% 
  sch_add_relation( 7L, 10L) %>% 
  sch_add_relation( 8L, 10L) %>% 
  sch_add_relation( 9L, 10L) %>% 
  sch_add_relation(10L, 11L) %>% 
  sch_add_relation(10L, 13L) %>% 
  sch_add_relation(11L, 12L) %>% 
  sch_add_relation(12L, 15L) %>% 
  sch_add_relation(13L, 14L) %>% 
  sch_add_relation(14L, 15L) %>% 
  sch_add_relation(15L, 16L) %>% 
  sch_add_relation(16L, 17L) %>% 
  sch_plan()

sch_duration(sch)
sch_activities(sch)
sch_relations(sch)

## -----------------------------------------------------------------------------
# Create a schedule
sch <- sch_new() %>% 
  sch_title("Fictitious Project Example") %>% 
  sch_reference("VANHOUCKE, Mario. Measuring time:
  improving project performance using earned value management.
  Gent: Springer, 2009, p. 18") %>% 
  sch_add_activity( 1L, "a1" , 0L,  2L,3L,4L) %>% 
  sch_add_activity( 2L, "a2" , 4L,  5L) %>% 
  sch_add_activity( 3L, "a3" , 9L, 10L) %>% 
  sch_add_activity( 4L, "a4" , 1L,  6L) %>% 
  sch_add_activity( 5L, "a5" , 4L,  9L) %>% 
  sch_add_activity( 6L, "a6" , 5L,  7L) %>% 
  sch_add_activity( 7L, "a7" , 1L,  8L,11L) %>% 
  sch_add_activity( 8L, "a8" , 7L, 12L) %>% 
  sch_add_activity( 9L, "a9" , 8L, 12L) %>% 
  sch_add_activity(10L, "a10", 3L, 12L) %>% 
  sch_add_activity(11L, "a11", 3L, 12L) %>% 
  sch_add_activity(12L, "a12", 0L) %>% 
  sch_plan()

sch_duration(sch)
sch_activities(sch)
sch_relations(sch)

## -----------------------------------------------------------------------------
# Activities added one by one
sch <- sch_new() %>% 
  sch_add_activity(1L, "Task 1", 5L) %>% 
  sch_add_activity(2L, "Task 2", 6L) %>% 
  sch_add_activity(3L, "Task 3", 8L) %>% 
  sch_add_activity(4L, "Task 4", 6L) %>% 
  sch_add_activity(5L, "Task 5", 9L) %>% 
  sch_add_activity(6L, "Task 6", 3L) %>% 
  sch_add_activity(7L, "Task 7", 4L) %>% 
  sch_plan()
sch_duration(sch)
sch_activities(sch)

## -----------------------------------------------------------------------------
# Create a schedule
sch <- sch_new() %>% 
  sch_title("Fictitious Project Example") %>% 
  sch_reference("VANHOUCKE, Mario. Measuring time:
    improving project performance using earned value management.
    Gent: Springer, 2009, p. 18") %>% 
# Add activities and relations to it.
  sch_add_activity(  1L, "a1" , 0L,  2L,3L,4L) %>% 
  sch_add_activity(  2L, "a2" , 4L,  5L) %>% 
  sch_add_activity(  3L, "a3" , 9L,  10L) %>% 
  sch_add_activity(  4L, "a4" , 1L,  6L) %>% 
  sch_add_activity(  5L, "a5" , 4L,  9L) %>% 
  sch_add_activity(  6L, "a6" , 5L,  7L) %>% 
  sch_add_activity(  7L, "a7" , 1L,  8L,11L) %>% 
  sch_add_activity(  8L, "a8" , 7L, 12L) %>% 
  sch_add_activity(  9L, "a9" , 8L, 12L) %>% 
  sch_add_activity( 10L, "a10", 3L, 12L) %>% 
  sch_add_activity( 11L, "a11", 3L, 12L) %>% 
  sch_add_activity( 12L, "a12", 0L) %>% 
  sch_plan()
sch_title(sch)
sch_reference(sch) %>% cat()
sch_duration(sch)

## -----------------------------------------------------------------------------
# Create a schedule
sch <- sch_new() %>% 
  sch_title("Fictitious Project Example") %>% 
  sch_reference("VANHOUCKE, Mario. Measuring time:
    improving project performance using earned value management.
    Gent: Springer, 2009, p. 18") 

sch_has_any_activity(sch)  # FALSE
sch_nr_activities(sch)     # 0

# Add activities and relations to it.
sch %<>% 
  sch_add_activity(  1L, "a1" , 0L,  2L,3L,4L) %>% 
  sch_add_activity(  2L, "a2" , 4L,  5L) %>% 
  sch_add_activity(  3L, "a3" , 9L,  10L) %>% 
  sch_add_activity(  4L, "a4" , 1L,  6L) %>% 
  sch_add_activity(  5L, "a5" , 4L,  9L) %>% 
  sch_add_activity(  6L, "a6" , 5L,  7L) %>% 
  sch_add_activity(  7L, "a7" , 1L,  8L,11L) %>% 
  sch_add_activity(  8L, "a8" , 7L, 12L) %>% 
  sch_add_activity(  9L, "a9" , 8L, 12L) %>% 
  sch_add_activity( 10L, "a10", 3L, 12L) %>% 
  sch_add_activity( 11L, "a11", 3L, 12L) %>% 
  sch_add_activity( 12L, "a12", 0L) %>% 
  sch_plan()

sch_has_any_activity(sch)  # TRUE
sch_nr_activities(sch)     # 12

sch_get_activity(sch, 10L)
sch_activities(sch)

## -----------------------------------------------------------------------------
sch <- sch_new() %>% 
  sch_title("A project") %>%
  sch_reference("From criticalpath") %>% 
  sch_add_activities(
    id        = c( 1L,   2L,   3L,   4L ),
    name      = c("A", "B", "C", "D"),
    duration  = c( 2L,   3L,   1L,   2L )
  ) %>% 
  sch_add_relations(
    from = c(1L, 2L, 4L, 4L),
    to   = c(3L, 3L, 1L, 2L)
  ) %>% 
  sch_plan()

gantt <- sch_gantt_matrix(sch)

gantt

# What is the effort by time period?
colSums(gantt) # 1 1 2 2 1 1

# What is the duration by activities?
rowSums(gantt) # 2 3 1 2

# what is the S curve
cumsum(colSums(gantt))
plot(cumsum(colSums(gantt)), type="l", lwd=3)
xyw <- sch_xy_gantt_matrix(sch)
xyw
plot(xyw[, 1:2])

## -----------------------------------------------------------------------------
sch <- sch_new() %>% 
  sch_title("Project 2: Patient Transport System") %>% 
  sch_reference(
  "VANHOUCKE, Mario. Integrated project management and control:
  first comes the theory, then the practice. Gent: Springer, 2014, p. 9") %>% 
  sch_add_activities(
    id        = 1:17,
    name      = paste("a", as.character(1:17), sep=""),
    duration  = c(1L,1L,3L,2L, 2L,2L,2L,1L, 4L,5L,3L,3L, 4L,5L,1L,5L,2L)
  ) %>% 
  sch_add_relations(
    from = c(1L, 2L, 3L, 3L, 4L, 5L, 6L, 7L, 8L,  8L,  8L,
      8L,  8L,  9L, 10L, 11L, 12L, 13L, 13L, 14L, 14L, 15L, 15L),
    to   = c(2L, 3L, 4L, 6L, 5L, 8L, 7L, 8L, 9L, 10L, 11L,
     12L, 13L, 14L, 14L, 14L, 14L, 14L, 15L, 16L, 17L, 16L, 17L)
  ) %>% 
  sch_plan()

#Project duration
sch_duration(sch) # 25

#Activities duration
sch_activities(sch)$duration

new_durations <- c(1L,2L,5L, 4L,3L, 2L,1L, 5L, 3L,5L,5L,3L,4L, 2L,1L, 2L,4L)
sch %<>% 
  sch_change_activities_duration(new_durations)

#Project duration
sch_duration(sch) # 31
#Activities duration
sch_activities(sch)$duration


## -----------------------------------------------------------------------------
n <- sch %>% sch_nr_activities()
set.seed(45678)
i <- sample(n)

another_schedule <- sch_new() %>% 
  sch_add_activities(
    id        = sch_activities(sch)$id[i],
    name      = sch_activities(sch)$name[i],
    duration  = sch_activities(sch)$duration[i]
  ) %>%
  sch_add_relations(
    from = c(1L, 2L, 3L, 3L, 4L, 5L, 6L, 7L, 8L,  8L,  8L,
             8L,  8L,  9L, 10L, 11L, 12L, 13L, 13L, 14L, 14L, 15L, 15L),
    to   = c(2L, 3L, 4L, 6L, 5L, 8L, 7L, 8L, 9L, 10L, 11L,
             12L, 13L, 14L, 14L, 14L, 14L, 14L, 15L, 16L, 17L, 16L, 17L)
  ) %>%
  sch_plan()


another_schedule %<>% sch_change_activities_duration(new_durations[i])
# Second schedule.
sch_duration(another_schedule)

# First schedule.
sch_duration(sch)

## -----------------------------------------------------------------------------
# Create a schedule
sch <- sch_new() %>% 
  sch_title("Fictitious Project Example") %>% 
  sch_reference("VANHOUCKE, Mario. Measuring time:
  improving project performance using earned value management.
  Gent: Springer, 2009, p. 18")

sch_has_any_relation(sch)  # FALSE
sch_nr_relations(sch)      # 0

sch %<>% 
  sch_add_activity( 1L, "a1" , 0L,  2L,3L,4L) %>% 
  sch_add_activity( 2L, "a2" , 4L,  5L) %>% 
  sch_add_activity( 3L, "a3" , 9L, 10L) %>% 
  sch_add_activity( 4L, "a4" , 1L,  6L) %>% 
  sch_add_activity( 5L, "a5" , 4L,  9L) %>% 
  sch_add_activity( 6L, "a6" , 5L,  7L) %>% 
  sch_add_activity( 7L, "a7" , 1L,  8L,11L) %>% 
  sch_add_activity( 8L, "a8" , 7L, 12L) %>% 
  sch_add_activity( 9L, "a9" , 8L, 12L) %>% 
  sch_add_activity(10L, "a10", 3L, 12L) %>% 
  sch_add_activity(11L, "a11", 3L, 12L) %>% 
  sch_add_activity(12L, "a12", 0L) %>% 
  sch_plan()


sch_has_any_relation(sch)  # TRUE
sch_nr_relations(sch)      # 14

sch_relations(sch)

## -----------------------------------------------------------------------------
# Create a schedule
sch <- sch_new() %>% 
  sch_title("Fictitious Project Example") %>% 
  sch_reference("VANHOUCKE, Mario. Measuring time:
    improving project performance using earned value management.
    Gent: Springer, 2009, p. 18") %>% 
  sch_add_activity( 2L, "a2" , 4L,  5L, 12L) %>% 
  sch_add_activity( 3L, "a3" , 9L, 10L) %>% 
  sch_add_activity( 4L, "a4" , 1L,  6L) %>% 
  sch_add_activity( 5L, "a5" , 4L,  9L) %>% 
  sch_add_activity( 6L, "a6" , 5L,  7L) %>% 
  sch_add_activity( 7L, "a7" , 1L,  8L,11L) %>% 
  sch_add_activity( 8L, "a8" , 7L, 12L) %>% 
  sch_add_activity( 9L, "a9" , 8L, 12L) %>% 
  sch_add_activity(10L, "a10", 3L, 12L) %>% 
  sch_add_activity(11L, "a11", 3L, 12L) %>% 
  sch_add_activity(12L, "a12", 0L) %>% 
  sch_plan()

sch_all_successors(sch, 2) # 5, 9, 12
sch_all_successors(sch, 7) # 8, 11, 12
sch_all_successors(sch, 10) # 12

sch_successors(sch, 2) # 5, 12
sch_successors(sch, 7) # 8, 11
sch_successors(sch, 10) # 12

sch_all_predecessors(sch, 2) # nothing
sch_all_predecessors(sch, 7) # 6, 4
sch_all_predecessors(sch, 10) # 3

sch_predecessors(sch, 2) # nothing
sch_predecessors(sch, 7) # 6
sch_predecessors(sch, 10) # 3

sch_is_redundant(sch, 2, 5)  #FALSE
sch_is_redundant(sch, 2, 12) #TRUE


## -----------------------------------------------------------------------------
# Create a schedule
sch <- sch_new() %>% 
  sch_title("Fictitious Project Example") %>%
  sch_reference("VANHOUCKE, Mario. Measuring time:
    improving project performance using earned value management.
    Gent: Springer, 2009, p. 18") %>% 
  # Add activities and relations to it.
  sch_add_activity( 1L, "a1" , 0L,  2L,3L,4L) %>% 
  sch_add_activity( 2L, "a2" , 4L,  5L) %>% 
  sch_add_activity( 3L, "a3" , 9L, 10L) %>% 
  sch_add_activity( 4L, "a4" , 1L,  6L) %>% 
  sch_add_activity( 5L, "a5" , 4L,  9L) %>% 
  sch_add_activity( 6L, "a6" , 5L,  7L) %>% 
  sch_add_activity( 7L, "a7" , 1L,  8L,11L) %>% 
  sch_add_activity( 8L, "a8" , 7L, 12L) %>% 
  sch_add_activity( 9L, "a9" , 8L, 12L) %>% 
  sch_add_activity(10L, "a10", 3L, 12L) %>% 
  sch_add_activity(11L, "a11", 3L, 12L) %>% 
  sch_add_activity(12L, "a12", 0L) %>% 
  sch_plan()

sch_topoi_sp(sch)
sch_topoi_ad(sch)
sch_topoi_la(sch)
sch_topoi_tf(sch)

