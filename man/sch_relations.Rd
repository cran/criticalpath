% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sch_relation.R
\name{sch_relations}
\alias{sch_relations}
\title{Relations}
\usage{
sch_relations(sch, order = "topological")
}
\arguments{
\item{sch}{A schedule object.}

\item{order}{Indicates the order of relations:
\itemize{
\item \strong{\code{"topological"}:} The relations tibble is in topological order.
\item \strong{\code{"insert"}:} The relations tibble is in insert order.
}}
}
\value{
A tibble with relations.
}
\description{
Return a tibble with all relations of a schedule in topological order.
These are the main information calculated by CPM.
}
\details{
The tibble is formed by following structure:
\itemize{
\item \strong{from:} Predecessor activity id from a relation.
\item \strong{to:} Successor activity id to a relation.
\item \strong{type:} The type of relation between activities.
Its value may be: FS, FF, SS, SF.
\item \strong{lag:} The time period between activity predecessor and
activity successor activity
\item \strong{critical:} A critical relation is formed by two activity critical:
predecessor and successor.
\code{TRUE} indicates it is critical;
\code{FALSE} indicates it is not critical.
\item \strong{ord:} Indicates de order that the relation was added in the schedule.
\item \strong{i_from:} It is the index of predecessor activity in the
activities tibble.
\item \strong{i_to:} It is the index of successor activity in the
activities tibble.
}
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
  sch_add_relation(14L, 15L) \%>\%
  sch_add_relation( 9L, 10L) \%>\%
  sch_add_relation( 2L,  3L) \%>\%
  sch_add_relation( 8L, 10L) \%>\%
  sch_add_relation(10L, 13L) \%>\%
  sch_add_relation( 5L,  6L) \%>\%
  sch_add_relation(11L, 12L) \%>\%
  sch_add_relation(15L, 16L) \%>\%
  sch_add_relation( 6L,  8L) \%>\%
  sch_add_relation( 3L,  4L) \%>\%
  sch_add_relation(16L, 17L) \%>\%
  sch_add_relation( 6L,  7L) \%>\%
  sch_add_relation(10L, 11L) \%>\%
  sch_add_relation(13L, 14L) \%>\%
  sch_add_relation( 4L,  5L) \%>\%
  sch_add_relation( 7L, 10L) \%>\%
  sch_add_relation(12L, 15L) \%>\%
  sch_add_relation( 6L,  9L) \%>\%
  sch_add_relation( 1L,  2L) \%>\%
  sch_plan()
# In "topological" order.
sch_relations(sch)
# In "insert" order.
sch_relations(sch, order = "insert")

}
\seealso{
\code{\link[=sch_add_activities]{sch_add_activities()}}, \code{\link[=sch_has_any_relation]{sch_has_any_relation()}}, \code{\link[=sch_topoi_tf]{sch_topoi_tf()}},
\code{\link[=sch_gantt_matrix]{sch_gantt_matrix()}}, \code{\link[=sch_activities]{sch_activities()}}, \code{\link[=sch_add_relations]{sch_add_relations()}},
\code{\link[=sch_topoi_sp]{sch_topoi_sp()}}, \code{\link[=sch_topoi_la]{sch_topoi_la()}}, \code{\link[=sch_non_critical_activities]{sch_non_critical_activities()}},
\code{\link[=sch_topoi_ad]{sch_topoi_ad()}}, \code{\link[=sch_nr_relations]{sch_nr_relations()}}.
}
