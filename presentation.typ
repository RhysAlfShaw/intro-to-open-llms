#import "@preview/typslides:1.2.6": *

// Project configuration
#show: typslides.with(
  ratio: "16-9",
  theme: "reddy",
  font: "Fira Sans",
  link-style: "color",
)

// The front slide is the first slide of your presentation
#front-slide(
  title: "An Introduction to Open Source Large Language Models",
  subtitle: [Astrophysics developer group],
  authors: "Rhys Shaw",
  info: [follow along here: #link("https://github.com/RhysAlfShaw/intro-to-open-llms")],
)

// Custom outline
// #table-of-contents()
// Title slides create new sections

#title-slide[
  Wins!
]

#title-slide[
  Issues?
]

#slide(title:"What is an Open Source Large Language Model?")[
  - Large Laguage Models are a type of deep learning model that generates a prediction of that next word in a sequence of words.

  - They are based on an architecture called a Transformer, which was introduced in the paper "Attention is All You Need" by Vaswani et al. in 2017.

  - The key part is the Attention mechanism, which allows the model to focus on different parts of the input sequence when making predictions.
]

#slide(title:"Transformers")[
  #figure(image("assets/img/transformers.png"), caption: "A typical Transformer architecture.")
]

#slide(title: "Transformer Model")[
  #figure(image("assets/img/transformer.png"), caption: "A typical Transformer arhitecture.")
  
]


// A simple slide
#slide[
  - This is a simple `slide` with no title.
  - #stress("Bold and coloured") text by using `#stress(text)`.
  - Sample link: #link("typst.app").
    - Link styling using `link-style`: `"color"`, `"underline"`, `"both"`
  - Font selection using `font: "Fira Sans"`.

  #framed[This text has been written using `#framed(text)`. The background color of the box is customisable.]

  #framed(title: "Frame with title")[This text has been written using `#framed(title:"Frame with title")[text]`.]
]

// Focus slide
#focus-slide[
  This is an auto-resized _focus slide_.
]

// Blank slide
#blank-slide[
  - This is a `#blank-slide`.

  - Available #stress[themes]#footnote[Use them as *color* functions! e.g., `#reddy("your text")`]:

  #framed(back-color: white)[
    #bluey("bluey"), #reddy("reddy"), #greeny("greeny"), #yelly("yelly"), #purply("purply"), #dusky("dusky"), darky.
  ]

  // #show: typslides.with(
  //   ratio: "16-9",
  //   theme: "bluey",
  //   ...
  // )

  - Or just use *your own theme color*:
    - `theme: rgb("30500B")`
]

// Slide with title
#slide(title: "Outlined slide", outlined: true)[
  - Outline slides with `outlined: true`.

  #grayed([This is a `#grayed` text. Useful for equations.])
  #grayed($ P_t = alpha - 1 / (sqrt(x) + f(y)) $)

]

// Columns
#slide(title: "Columns")[

  #cols(columns: (2fr, 1fr, 2fr), gutter: 2em)[
    #grayed[Columns can be included using `#cols[...][...]`]
  ][
    #grayed[And this is]
  ][
    #grayed[an example.]
  ]

  - Custom spacing: `#cols(columns: (2fr, 1fr, 2fr), gutter: 2em)[...]`

  // - Sample references: @typst, @typslides.
    - Add a #stress[bibliography slide]...

    1. `#let bib = bibliography("you_bibliography_file.bib")`
    2. `#bibliography-slide(bib)`
]


#slide(
  title: "AOB"
)[
  Any Other Buisness
  #v(10pt)
  made with typst
]
// Bibliography
// #let bib = bibliography("bibliography.bib")
// #bibliography-slide(bib)