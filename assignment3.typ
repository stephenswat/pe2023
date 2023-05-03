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
      Performance Engineering 2023 -- Assignment 3
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
    text[#raw(commit), May 3rd, 2023]}
  )
)

= Assignment 3 -- Data-centric and Statistical Modelling

The goal of this assignment is to familiarise yourself with the concepts of
data-centric and statistical, in which we sacrifice descriptive power for
predictive power. Such models include a wide variety of machine learning
methods.

#note[
  This assignment is worth a total of *11 points*, and it is due by *May 19
  2023, 17:00 CEST*. Your final report should preferably be no longer than *20
  pages*. Submit *only* your report, without your code (embedding code snippets
  in your report is allowed).
]

== Part 1 -- Parallel Dense Matrix-Matrix Multiplication (2 points)

Select a high-performance parallel implementations of dense matrix-matrix
multiplication (multi-core CPU or GPU). Build a statistical model for this
application. Then empirically validate your model and discuss its accuracy.
Compare the accuracy of your model against that of your previous models.

== Part 2 -- Parallel Sparse Matrix-Vector Multiplication (2 points)

On Canvas, you will find a sequential version of sparse matrix-vector
multiplication (SpMV) using a variety of storage formats such as COO, CSR, and
CSC. Parallelize the SpMV kernel using at least two formats (this includes more
exotic formats like ELLPACK or HYB) for either multi-core CPU or GPU. Benchmark
the two parallel versions using the `ash958`, `arc130`, `bcspwr06`, `ch7-7-b1`,
and `fs_760_1` matrices. Which one of the two data formats is better and why?

#note[
  In previous assignments, you were instructed to explicitly ignore the
  sparsity of the data in your models. For this assignment, sparsity should be
  a core component of your models.
]

== Part 3 -- Analytical Model of SpMV (2 points)

Build an analytical model for one of the two parallel SpMV kernels. Calibrate
the model as much as you deem necessary (e.g., using microbenchmarking and (if
relevant) results from assignment 2).

== Part 4 -- Statistical Model of SpMV (3 points)

Build a statistical model for the same parallel SpMV kernel that you used for
the previous part.

== Part 5 -- Validation and Reflection (2 points)

Validate your analytical and statistical models empirically. What is their
accuracy? Compare the two modeling techniques for SpMV and discuss advantages
and disadvantages.
