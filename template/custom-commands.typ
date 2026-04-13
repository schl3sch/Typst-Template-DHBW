// Adds todo to highlight todos in the pdf
#let todo(body) = {
  highlight(fill: orange.lighten(60%))[
    *TODO:* #body
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
