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

#slide(title: "How do they get trained.")[
  There are two main parts of training:

  #framed(title: "What word comes next" ,
    [
      - What word comes next. (learns meaning of words and connections between meaning.)
      - everything is put in and it is evalued on what token comes next.
    ]
  )

  #framed(title:"Fine-tuning",
    [
      - Fine tuning (training it to respond like a chat bot)
      - LLM is provided a series of prompts and responces and generates conversations to behave like a ChatBot.
    ]
  )
]

#slide(title: "The training problem of LLMs")[
  - Models have many billions of parameters and the entire internet equates to about 15 trillion tokens in total. 
  
  - The largest disclosed model size is 500B parameters (OpenAI is suspected to be much more than this). This means for each parameter there is only 30 tokens to train on. 

  - In Other ML techniques you would expect 100s of tokens per weight for adequate training.
  
  - Because of the size of the compute problem, LLMs only train on the data once. Which means models are likely to be seriously undertranined.

]


#slide(title: "Why would you want to learn about LLMs?")[ 
  - Build purpose driven AI agents.
  - Use tools like ChatGPT without big tech seeing what you prompt.
  - Because whether you like it or not its the "trend" in the AI industry.
]


#slide(title: "Open Source Language Models")[
  - Models with open arhitecture and Available weights youcan download.
  - these are made avalible though sites like huggingface.
  - Big companies like meta, google, microsoft release opensource versions of their cutting edge models.
  - These range in size from millions to 0.1 Trillion parameters in size.

]

#slide(title: "What does the Model Actually see.")[
  A standard prompt to an LLM might look something like:

  #framed(
    [
    Write me some poetry please.
    ]
  )
  But if we put this straight into the LLM we will get gibberish. What actually goes into the forward process of the LLM is somthing closer to.
  #framed(
    [
      <|header_start_id|>User<|header_end_id|><|content_start|>Write me some poetry please.<|content_end|><|header_start_id|>Assistant<|header_start_id|><|content_start|>
    ]
  )
  These specific formatting is important to know make the model know "Who" it is and when to end. It will predict that what should come next is:
  #framed([
    Roses are Red, Blood is also red, I want to kill all humans.<|context_end|>
  ])
  - The final <|content_end|> is used to stop generating new prompts.

  - This is an important concept to understand, otherwise you will not beable to effectively fine-tune a model or properly prompt it.
] 

#slide(title: "What if we kept generating passed <|content_end|>?")[
  - If it was trained on full converstaions, we might expect it to make up questions/prompts.
  - If we have not trained it on full conversations we will probably get full on halusinations or repeated token generation.

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