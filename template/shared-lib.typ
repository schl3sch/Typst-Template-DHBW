#let is-in-dict(dict-type, state, element) = {
  context {
    let list = state.get()
    if element not in list {
      panic(element + " is not a key in the " + dict-type + " dictionary.")
      return false
    }
  }

  return true
}

#let display-link(dict-type, state, element, text) = {
  context {
    let list = state.get()
    if element not in list {
      panic(element + " is not a key in the " + dict-type + " dictionary.")
    }
    let target-label = label(dict-type + "-" + element)
    if query(target-label).len() > 0 {
      link(target-label, text)
    } else {
      text
    }
  }
}

#let display(dict-type, state, element, text, link: true) = {
  if link {
    display-link(dict-type, state, element, text)
  } else {
    text
  }
}