% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sch_activity.R
\name{sch_activities}
\alias{sch_activities}
\title{Activities}
\usage{
sch_activities(sch)
}
\arguments{
\item{sch}{A schedule object.}
}
\value{
A tibble with activities.
}
\description{
Return a tibble with all activities of a schedule in an insertion order.
These are the main information calculated by CPM.
}
\details{
The tibble is formed by following structure:
\itemize{
\item \strong{id:} Activity id.
\item \strong{name:} The name of activity.
\item \strong{duration:} A number that represents the activity's duration.
\item \strong{milestone:} A milestone is an activity with zero duration.
This property indicates if an activity is a milestone or not:
\code{TRUE} indicates it is a milestone; \code{FALSE} indicates it is not.
\item \strong{critical:} A critical activity is one with total float minor or equal
to zero. This property indicates if an activity is critical:
\code{TRUE} indicates it is critical;
\code{FALSE} indicates it is not critical.
\item \strong{early_start:} Is the earliest start period an activity can begin
after its predecessors without violating precedence relation.
\item \strong{early_finish:} Is the early start plus activity duration.
\item \strong{late_start:} Is the late finish minus activity duration.
\item \strong{late_finish:} Is the latest finish an activity can finish
before their successors without violating precedence relation.
\item \strong{total_float:} It is the amount of period an activity can be
delayed without violating the project duration. Its formula is:
late_start - early_start or late_finish - early_finish
\item \strong{free_float:} It is the amount of period an activity can be
delayed without violating the start time of the successors activities.
\item \strong{progr_level:} It is the rank of activities counted from begin.
The level of the activities that don't have predecessor is one;
the level of the other activities, is one plus the maximal level of
their predecessor.
\item \strong{regr_level:} Regressive level is the rank of activities counted
from the end. The level of the activities that don't have successor is the
maximal progressive level; the level of the other activities,
is one minus the minimal level of their successor.
\item \strong{topo_float:} It is the difference between progressive level
and regressive level.
}
}
\examples{
sch <- sch_new() \%>\%
  sch_title("Fictitious Project Example") \%>\%
  sch_reference("VANHOUCKE, Mario. Measuring time:
  improving project performance using earned value management.
  Gent: Springer, 2009, p. 18") \%>\%
  sch_add_activity(  1L, "a1" , 0L, 2,3,4) \%>\%
  sch_add_activity(  2L, "a2" , 4L, 5) \%>\%
  sch_add_activity(  3L, "a3" , 9L, 10) \%>\%
  sch_add_activity(  4L, "a4" , 1L, 6) \%>\%
  sch_add_activity(  5L, "a5" , 4L, 9) \%>\%
  sch_add_activity(  6L, "a6" , 5L, 7) \%>\%
  sch_add_activity(  7L, "a7" , 1L, 8,11) \%>\%
  sch_add_activity(  8L, "a8" , 7L, 12) \%>\%
  sch_add_activity(  9L, "a9" , 8L, 12) \%>\%
  sch_add_activity( 10L, "a10", 3L, 12) \%>\%
  sch_add_activity( 11L, "a11", 3L, 12) \%>\%
  sch_add_activity( 12L, "a12", 0L) \%>\%
  sch_plan()
sch_activities(sch)

}
\seealso{
\code{\link[=sch_has_any_activity]{sch_has_any_activity()}}, \code{\link[=sch_change_activities_duration]{sch_change_activities_duration()}},
\code{\link[=sch_add_activity]{sch_add_activity()}}, \code{\link[=sch_nr_activities]{sch_nr_activities()}}, \code{\link[=sch_critical_activities]{sch_critical_activities()}},
\code{\link[=sch_add_activities]{sch_add_activities()}}, \code{\link[=sch_get_activity]{sch_get_activity()}}, \code{\link[=sch_duration]{sch_duration()}}.
}
