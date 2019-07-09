Given("I visit Google's homepage") do
  @app.home_page.load
end

When('I input {string} into the search Bar') do |string|
  @app.home_page.search_bar.set string
end

When('I tap Google Search') do
  @app.home_page.search_button.click
end

Then("Google's homepage loads") do
  expect(@app.home_page).to have_search_bar
  expect(@app.home_page).to have_search_button
end

Then('Search results for {string} load') do |string|
  puts string
end
