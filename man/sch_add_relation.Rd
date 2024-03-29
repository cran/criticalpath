% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sch_relation.R
\name{sch_add_relation}
\alias{sch_add_relation}
\title{Add Relation}
\usage{
sch_add_relation(sch, from, to, type = "FS", lag = 0L)
}
\arguments{
\item{sch}{A schedule object.}

\item{from}{The id of predecessor activity.
Must exist an activity with from.}

\item{to}{The id of successor activity.
Must exist an activity with to.}

\item{type}{Specifies the type of relation between activities.
The default type is FS and its value may be: FS, FF, SS, SF, that means:
\itemize{
\item \strong{FS:} Finish-Start relation.
Activity 'to' id can only start after the finish of activity 'from' id.
\item \strong{FF:} Finish-Finish relation.
Activity 'to' id must finish together with activity 'from' id.
\item \strong{SS:} Start-Start relation.
Activity 'to' id must start together with activity 'from' id.
\item \strong{SF:} Start-Finish relation.
Activity 'to' id must finish when activity 'from' id starts.
}

If type is not defined, it is assumed to be FS.}

\item{lag}{The time period between activities that the successor activity
'to' must be advanced after activity 'from' has been finished.
The value may be negative, in such case, the activity 'to' will be
anticipated 'lag' time periods.
It must be an integer, less than, equal or greater than zero.
If lag is not defined, it is assumed to be zero.}
}
\value{
A Schedule object with a relation added.
}
\description{
Add a relation to a schedule.
}
\examples{
sch <- sch_new() \%>\%
  sch_title("Project 3: Old Carriage House Renovation") \%>\%
  sch_reference(
    "VANHOUCKE, Mario. Integrated project management and control:
  first comes the theory, then the practice. Gent: Springer, 2014, p. 11") \%>\%
  sch_add_activity( 1L, "a1" , 2L) \%>\%
  sch_add_activity( 2L, "a2" , 2L) \%>\%
  sch_add_activity( 3L, "a3" , 4L) \%>\%
  sch_add_activity( 4L, "a4" , 3L) \%>\%
  sch_add_activity( 5L, "a5" , 4L) \%>\%
  sch_add_activity( 6L, "a6" , 1L) \%>\%
  sch_add_activity( 7L, "a7" , 1L) \%>\%
  sch_add_activity( 8L, "a8" , 1L) \%>\%
  sch_add_activity( 9L, "a9" , 1L) \%>\%
  sch_add_activity(10L, "a10", 1L) \%>\%
  sch_add_activity(11L, "a11", 3L) \%>\%
  sch_add_activity(12L, "a12", 2L) \%>\%
  sch_add_activity(13L, "a13", 1L) \%>\%
  sch_add_activity(14L, "a14", 1L) \%>\%
  sch_add_activity(15L, "a15", 2L) \%>\%
  sch_add_activity(16L, "a16", 1L) \%>\%
  sch_add_activity(17L, "a17", 1L) \%>\%
  sch_add_relation( 1L,  2L) \%>\%
  sch_add_relation( 2L,  3L) \%>\%
  sch_add_relation( 3L,  4L) \%>\%
  sch_add_relation( 4L,  5L) \%>\%
  sch_add_relation( 5L,  6L) \%>\%
  sch_add_relation( 6L,  7L) \%>\%
  sch_add_relation( 6L,  8L) \%>\%
  sch_add_relation( 6L,  9L) \%>\%
  sch_add_relation( 7L, 10L) \%>\%
  sch_add_relation( 8L, 10L) \%>\%
  sch_add_relation( 9L, 10L) \%>\%
  sch_add_relation(10L, 11L) \%>\%
  sch_add_relation(10L, 13L) \%>\%
  sch_add_relation(11L, 12L) \%>\%
  sch_add_relation(12L, 15L) \%>\%
  sch_add_relation(13L, 14L) \%>\%
  sch_add_relation(14L, 15L) \%>\%
  sch_add_relation(15L, 16L) \%>\%
  sch_add_relation(16L, 17L) \%>\%
  sch_plan()
sch_duration(sch)
sch_activities(sch)
sch_relations(sch)

}
\seealso{
\code{\link[=sch_has_any_relation]{sch_has_any_relation()}}, \code{\link[=sch_nr_relations]{sch_nr_relations()}},
\code{\link[=sch_add_relations]{sch_add_relations()}}, \code{\link[=sch_plan]{sch_plan()}}, \code{\link[=sch_validate]{sch_validate()}},
\code{\link[=sch_add_activities]{sch_add_activities()}}, \code{\link[=sch_new]{sch_new()}}.
}
