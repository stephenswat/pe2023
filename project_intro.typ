#let commit = read("commit.txt").trim("\n")

#let decoration(position, color) = {
  let border = 2mm + color
  let strokes = (
    header: ( bottom: border ),
    footer: ( top: border )
  )
  block(
    stroke: strokes.at(position),
    width: 100%,
    inset: .3em
  )
}

#set text(
  size: 24pt,
  fill: rgb(29, 25, 26)
)

#set page(
  paper: "presentation-16-9",
  margin: 3cm,
  header: decoration("header", rgb(128, 0, 40)),
  footer: decoration("footer", rgb(128, 0, 40)),
)

#set par(
  leading: 0.8em
)

#show heading: set block(spacing: 0.5em)

#let slide(body) = {
  pagebreak(weak: true)
  body
}

#let titleslide(title, author, date) = {
  align(center + horizon, {
    text(size: 38pt, {strong(title)})
    v(5pt, weak: true)
    linebreak()
    author
    linebreak()
    date
  })
}

#titleslide("PE2023 Project Introduction", "Stephen Nicholas Swatman", {raw(commit); text(", April 6th, 2023")})

#slide[
  = Introduction

  - Besides the exam and assignments, the project is the final component of
    your grade
  - We will kick off the project today
]

#slide[
  = Format

  - You will spend eight weeks on a project of _your choice_
  - The project is free-form and relatively hands-off
    - Of course, we are still here to help!
  - Same groups as assignments (barring good reasons)
]

#slide[
  = Requirements

  - You are required to apply as many of the methods taught in this course as
    you see fit
  - Please incorporate at least one form of parallelism:
    - Instruction-level
    - Data-level
    - Task-level
    - Node-level
]

#slide[
  = Proposal

  - Please submit a project proposal by Wednesday, April 12th
    - Not hard deadline, but _strongly_ recommended
    - Early submission is allowed and encouraged
  - One or two paragraphs about your project proposal
  - Ungraded, but for your benefit
    - Ensure that we all agree your project is valid
]

#slide[
  = Deliverable

  - We ask you to produce a report at the end of the project
    - Code is not required; you are welcome to work on code that you do not
      want to or cannot share
  - Please keep the report under 50 pages
    - For my sake, and to help you practice concise writing
]

#slide[
  = Schedule

  - Kick-off: April 6, 2023 (today)
  - Project proposals: April 12, 2023
  - Mid-term presentations: May 11, 2023
  - Final presentations: June 2, 2023
]

#slide[
  = Grading

  - Like assignments, realized performance gain is *not* the end goal
  - Rather, show ability to apply performance engineering methods in practice
    - Models (analytical, statistical, etc.)
    - Theoretical concepts (queueing theory, etc.)
    - Validation
]
