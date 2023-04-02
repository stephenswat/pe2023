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
  align(right, [
    #link("mailto:s.n.swatman@uva.nl")[Stephen Nicholas Swatman]\
    #link("mailto:a.l.varbanescu@utwente.nl")[Ana-Lucia Varbanescu]\
    #link("mailto:a.pathania@uva.nl")[Anuj Pathania]\
    Updated April 1st, 2023]
  )
)

= Assignment 1 -- The Roofline Model

The goal of this assignment is to practice using the roofline model to analyse
the performance of a small kernel. To this end, you will be required to build
several models for different architectures and different versions of a matrix
multiplication program. You are provided a sequential implementation of such a
program (see Canvas) which reads matrices $A$ and $B$ from two different files
and writes the output to a third file. The format in which the matrices are
stored is the _Matrix Market_ format
(#link("https://math.nist.gov/MatrixMarket/formats.html#MMformat")). We use
`mmio.c` and `mmio.h` for handing the I/O of these matrices
(#link("https://math.nist.gov/MatrixMarket/mmio-c.html")).

We provide a set of five matrices for your tests (`arc130`, `ash958`,
`bcspwr06`, `saylr4`, and `tols1090`). Performance results and model validation
should be reported for all five matrices. For the sake of simplicity, please
feel free to simply multiply $A times A^T$, which is valid for square and
rectangular matrices. Please assume matrices are dense, even if the number of
non-zero elements is low. Reporting results for more matrices is appreciated,
but not mandatory; you are free to use matrices from _Matrix Market_ or to
generate your own input matrices if this would be beneficial to your analysis.

You are expected to deliver a report at the end of this assignment, which
should be a stand-alone and coherent explanation of your modelling and
optimisation process. If your report is unclear or poorly written (e.g. if it
contains many errors in spelling or grammar), points may be subtracted. Note
that you will *not* be graded on the effectiveness of your optimisations (i.e.
the achieved speedup), but rather on the effectiveness of your optimisation
_process_. This includes (but is not limited to) the quality of your models,
your ability to interpret them, and the thoroughness of your validation.

#note[
  This assignment is worth a total of *11 points*, and it is due by *April 14
  2023, 17:00 CEST*. Your final report should preferably be no longer than *20
  pages*. Submit *only* your report, without your code (embedding code snippets
  in your report is allowed).
]

== Part 1 -- Sequential Roofline Models (3 points)

Build a roofline model for the reference implementation of matrix
multiplication. First, establish the performance boundaries imposed by the
hardware, both analytically (from hardware specifications) and empirically, and
report on the accuracy of your analytical rooflines. Then determine, by hand,
the arithmetic intensity of the application and establish the upper bound on
the performance of the application. Find the true performance of the
application for at least five matrices and compare them to your model. Report
on the validity of your model.

== Part 2 -- Sequential Optimisation (4 points)

Improve the performance of the reference matrix multiplication program through
model-guided optimisation. Consider techniques to improve the memory behavior
(e.g., consider improving the cache friendliness of the code) and the
computational efficiency (e.g., consider making use of SIMD or certain compiler
pragmas and flags) of the application. Apply at least two separate
optimisations. For each optimisation, make a prediction of its effect on the
roofline model, then measure the performance of the improved versions of the
application. Compare these results to the reference implementation. Incorporate
your findings in your models.

== Part 3 -- Parallel Matrix Multiplication (4 points)

Build a simple model to determine an upper bound on the performance of a
task-parallel matrix multiplication application. Parallelise the matrix
multiplication kernel on both a CPU (we recommend using OpenMP) and on a GPU
(we recommend using CUDA, as it is well supported on the DAS-5 machines). Build
a roofline model for each implementation and, using it as an indicator, improve
the performance further (if possible) or explain why that is no longer
feasible.
