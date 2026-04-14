// Adds todo to highlight todos in the pdf
#let todo(body) = {
  highlight(fill: orange.lighten(60%))[
    *TODO:* #body
  ]
}

// Adds question to highlight questions in the pdf
#let question(body) = {
  highlight(fill: green.lighten(60%))[
    *Question:* #body
  ]
}

// Adds important to highlight important things in the pdf
#let important(body) = {
  set text(size: 15pt)
  highlight(fill: red)[
    *Important:* #body
  ]
}

// Adds citation, mentioned in the guidelines
#let glcite(key) = {
  cite(key, form: "author")
  [ (]
  cite(key, form: "year")
  [) ]
  cite(key)
}

// Adds description (term and body)
#let desc(term, body) = {
  stack(
    dir: ttb,
    spacing: 0.6em,
    [*#term*],
    [#body],
  )
  v(1em)
}
