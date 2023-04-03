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

#titleslide("PE2023 Laptopcollege Introduction", "Stephen Nicholas Swatman", {raw(commit); text(", April 3rd, 2023")})

#slide[
  = Introduction

  - Welcome to the laptop- and work-colleges!
  - Addition to lectures in which we cover assignments and project
    - Important parts of your final grade
  - Also space for...
    - ... discussions about performance tools
    - ... general questions
    - ... and more!
]

#slide[
  = About Me

  - PhD student in the PCS group; currently remote at CERN
  - TA for Performance Engineering for the past few years
  - Contact me any time at #link("mailto:s.n.swatman@uva.nl")
]

#slide[
  = Slack

  - For communication with Anuj, your fellow students, and myself: please
    consider using *Slack*
  - Your questions and discussions are valuable to your colleagues and to us
  - Link to join is available on Canvas
]

#slide[
  = Groups

  - The assignments and projects are done in groups
  - Recommended (and maximum) group size is five students
  - Group assignment is free choice!
  - Please make your groups a.s.a.p., as the assignments start today!
]

#slide[
  = Assignments

  - You will be required to complete four assignments
  - Approximately two weeks per assignment
  - Deliverable for each assignment is a report
]

#slide[
  = Grading

  - Your assignment grade is calculated as $(9p) / 40 + 1$ where $p$ is the sum
    of the points you gather across all assignments
  - Each assignment is worth a little over 10 points, to allow you to build up
    a little bonus
]

#slide[
  = Project

  - You will also do a larger performance-related project
  - Performance engineering on a project _of your choice_
  - More information on this during the Thursday werkcollege
]

#slide[
  = Note on Flexibility

  - You are all MSc students capable of doing independent research, and you all
    (hopefully) have an interest in performance
  - "Performance" is an umbrella term for many extra-functional properties
    - Runtime, power consumption, portability, etc.
  - If you want to interpret the assignments in a different way that still
    shows understanding of performance engineering: please do!
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
  - Note: Mid-term and final presentation sessions *are* mandatory
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

#slide[
  = DAS-5

  - Everyone gets access to the DAS-5 compute cluster
  - Useful for measurements: stable, single-user environments
  - Access to Intel Haswell CPUs and a variety of GPUs
]

#slide[
  = DAS-5 -- Access and Rules

  - Your login details are in the "DAS-5 Login Details" assignment on Canvas
  - Please *do not* use the head nodes for computation: only compilation
  - Keep in mind DAS-5 is shared with your fellow PE students and other people
    doing research
  - Usually busy just before deadlines, keep that in mind #emoji.face.wink
]

#slide[
  = DAS-5 -- SSH

  - Access is via SSH using one of six partitions (VU, UvA, LIACS, TU Delft,
    UvA MMN, and Astron)
    - You are free to use any partition you want
  - Different hardware per partition
    - Please check DAS-5 website for more information
]

#slide[
  = DAS-5 -- Environment Management

  - DAS-5 provides many compilers, managed using standard TCL Environment
    Modules
  - Selecting modules is done via `module load [name]`
  - Unloading modules is done via `module unload [name]`
  - Available modules can be listed using `module avail`
]

#slide[
  = DAS-5 -- Storage

  - For storage, please use your home directory (`/home/pe2300/`)...
    - Heavily backed up
    - Relatively small storage quotum
  - ...or the scratch space (`/var/scratch/pe2300/`)
    - Not backed up
    - Much more available space
]

#slide[
  = DAS-5 -- Job Submission

  - Submit jobs to worker nodes using SLURM
  - Documentation available online, but we will also go over some basic
    commands today
]

#slide[
  = Note on DAS-6

  - If you have a good reason why you need to use DAS-6 for your research, we
    can arrange that for you
  - Please contact me for this as soon as possible, so we can arrange it with
    the admins
  - Keep in mind DAS-6 is used for active computing research, so adherence to
    rules is much more important!
]
