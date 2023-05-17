#let commit = read("commit.txt").trim("\n")

#show link: underline

#set text(
  size: 12pt,
  fill: rgb(29, 25, 26)
)

#set par(
  justify: true
)

#set page(
  margin: 7em,
  header: align(right)[
      Performance Engineering 2023 -- Assignment 4
  ]
)

#show heading: set block(below: 1em, above: 1.5em)

#let note = block.with(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  width: 100%,
)

#grid(
  columns: (50%, 50%),
  rows: (60pt, auto),
  image("UvALogo.svg", width: 90%),
  align(right, {
    link("mailto:s.n.swatman@uva.nl")[Stephen Nicholas Swatman]
    linebreak()
    link("mailto:a.l.varbanescu@utwente.nl")[Ana-Lucia Varbanescu]
    linebreak()
    link("mailto:a.pathania@uva.nl")[Anuj Pathania]
    linebreak()
    text[#raw(commit), May 17th, 2023]}
  )
)

= Assignment 4 -- Performance Counters

In the final assignment of the Performance Engineering course, we investigate
the use of performance counters. How do we read them, and what do they tell us
about a given application?

#note[
  This assignment is worth a total of *11 points*, and it is due by *June 2
  2023, 17:00 CEST*. Your final report should preferably be no longer than *20
  pages*. Submit *only* your report, without your code (embedding code snippets
  in your report is allowed).
]

== Part 1 -- SpMV on CPU (3 points)

Select two CPU implementations of SpMV from the previous assignment and analyze
their behaviour using performance counters. Choose three matrices with
different properties and show empirically whether differences in performance
between the implementations correlate with differences in the values reported
by the performance counters. In addition, show whether the performance counters
correlate with the properties of the matrices. Explain the behaviour you
observe.

== Part 2 -- Parallel Reduction on GPU (3 points)

The CUDA SDK (installed on DAS-5) contains six distinct versions of a parallel
reduction kernel. Pick three versions of this kernel and analyze their
performance using performance counters. As with SpMV on the GPU, try to find
any correlations between the performance counters and the running time of the
kernels. Compare the implementations using the performance metrics you gather,
and explain why certain counters impact performance.

#note[
  You will find the relevant files for this assignment at
  `/cm/shared/apps/cuda11.1/sdk/11.1.1/6_Advanced/reduction/`.
]

== Part 3 -- Pessimization (5 points)

Propose three distinct mini-apps (small applications) of your choosing for any
architecture. Using your knowledge of the application and the hardware, think
of a way to _pessimize_ the performance, i.e. to make the performance worse.
Now that you are performance experts, try to emulate mistakes that real
programmers might make. Ensure that all three applications are pessimized in
distict ways. Hypothesize about which performance counters will indicate the
problems you have created. Gather performance counter data about the
applications and compare these to your hypothesis. Then, optimize the
applications and demonstrate -- using performance counters -- that the problems
have disappeared. Do your optimizations introduce any new performance problems?

#note[
  If you need inspiration, check out Chapters 7 and 8 of "Introduction to High
  Performance Computing for Scientists and Engineers". One "clever" way of
  completing this assignment is to put sleep statements all over your code.
  This will not score you points. ;)
]
