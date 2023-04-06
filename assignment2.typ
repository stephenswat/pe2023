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
      Performance Engineering 2023 -- Assignment 1
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
    text[#raw(commit), April 3rd, 2023]}
  )
)

= Assignment 2 -- Analytical Modelling and Microbenchmarking

The goal of this assignment is to familiarise yourself with the concepts of
analytical modelling as well as microbenchmarking.

#note[
  This assignment is worth a total of *12 points*, and it is due by *May 6
  2023, 17:00 CEST*. Your final report should preferably be no longer than *20
  pages*. Submit *only* your report, without your code (embedding code snippets
  in your report is allowed).
]

== Part 1 -- Analytical Model of Matrix Multiplication (3 points)

Select the two best parallel versions of matrix multiplication you developed
during the first assignment for multi-core CPU and for GPU and build an
analytical performance model for them. Specifically, build models that predict
the performance of the matrix multiplications for matrices of arbitrary size.
Clearly identify the parameters of your models, but leave the models in their
symbolic form.

== Part 2 -- Calibration for Matrix Multiplication (2 points)

Calibrate your matrix multiplication models through microbenchmarking. You are
allowed to use existing microbenchmarks, but you can also build your own.
Please use the same models used in the first assignment to validate your model.
Be thorough in the validation of your model, and attempt to explain any
discrepancies between predicted performance and achieved performance. How do
your models compare to the models you build in the first assignment?

== Part 3 -- Analytical Model of Histogramming (3 points)

Build four distinct parallel programs which compute the histogram of a
gray-scale image represented as an array of 8-bit numbers. Build two
implementations for a multi-core CPU platform and two implementations for a GPU
platform. Build symbolic analytical models for all four implementations.
Identify the parameters of the models. Attempt to make a ranking between the
implementations, and explain your process.

== Part 4 -- Calibration for Histogramming (2 points)

Use and (if necessary) extend your existing microbenchmarking suite to
calibrate your new parallel histogramming models. Validate the models
empirically and discuss their accuracy.

== Part 5 -- Reflection (2 points)

Based on the several analytical models you developed, discuss the advantages
and limitations of analytical modeling. Please be thorough.
