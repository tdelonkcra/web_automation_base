class ExamplePage < SitePrism::Page
  set_url '/'

  element :heading_one, 'h1'
  element :heading_two, 'h2'
  element :heading_three, 'h3'
  element :paragraph, 'p'
  element :emphasis, 'em'
  element :strong, 'strong'
  element :link, 'a'
  element :code, 'code'
  element :blockquote, 'blockquote'
  element :horizontal_rule, 'hr'
end
