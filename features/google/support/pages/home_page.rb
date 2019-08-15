class HomePage < SitePrism::Page
  set_url '/'

  element :search_bar, '[title="Search"]'
  element :search_button, '[aria-label="Google Search"]'
  element :im_feeling_lucky_button, '[aria-label="I\'m Feeling Lucky"]'
end
