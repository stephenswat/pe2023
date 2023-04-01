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

#titleslide("PE2023 Laptopcollege Introduction", "Stephen Nicholas Swatman", "April 3rd, 2023")

#slide[
  = Introduction

  - Welcome to the laptop- and work-colleges!
  - Addition to lectures in which we cover assignments and project
    - Important parts of your final grade
]

#slide[
  = About Me

  - PhD student in the PSC group; currently remote at CERN
  - TA for Performance Engineering for the past few years
  - Contact me any time at #link("mailto:s.n.swatman@uva.nl")
]

#slide[
  = Slack

  - For communication with Anuj, your fellow students, and myself: please use
    *Slack*
  - Your questions and discussions are valuable to your colleagues and to us
  - Link to join is available on Canvas
]

#slide[
  = Groups

  - The assignments and projects are done in groups
  - Recommended group size is five students
]

#slide[
  = Assignments

  - You will be required
]

#slide[
  = Grading
]

#slide[
  = Project
]

#slide[
  = Schedule

  - *Laptopcolleges* Mondays at 11:00 (April 3rd, April 24th, May 8th, May 15th,
    and May 22nd): assignments and tools
  - *Werkcolleges* Thursdays at 11:00 (April 6th, April 20th, May 11th, and May
    25th): project
  - *Office hours* Wednesdays at 16:00, Fridays at 14:00, and on demand
    (excluding holidays and April 19th)
]

#slide[
  = Schedule (cont.)

  - This is a holiday-heavy period, so please check Datanose frequently!
  - No laptopcollege on April 17
    - Please treat this as a self-study session
  - Midterm project presentation session on 11th of May
  - Final project presentation session at the end of the course
]

#slide[
  = Attendance and Participation

  - My goal is to provide an educational and pleasant environment *for you*
  - If these sessions are not valuable to you, they are not mandatory
  - _However_, please consider letting me know how I can make them better for
    you!
]

#slide[
  = Note on AI Tools

  - ChatGPT and similar tools are becoming increasingly powerful
  - I cannot and will not stop you from using them
  - Current LLMs will _confidently_ generate *incorrect* output
    - Peer review and grading is not designed for this
  - If you use AI-generated text in your reports, please _mark_ the generated
    sections
    - No loss of points for this
]
