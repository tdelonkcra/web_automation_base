class HomePage < SitePrism::Page
  set_url '/'

  element :search_bar, '[title="Search"]'
  element :search_button, '[aria-label="Google Search"]'
end
