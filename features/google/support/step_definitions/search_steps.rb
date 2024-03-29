Given("I visit Google's homepage") do
  @app.home_page.load
end

When('I input {string} into the search bar') do |string|
  @app.home_page.search_bar.set string
end

When('I tap Google Search') do
  @app.home_page.search_button.click
end

When("I tap I'm Feeling Lucky") do
  @app.home_page.im_feeling_lucky_button.click
end

Then("Google's homepage loads") do
  expect(@app.home_page).to have_search_bar
  expect(@app.home_page).to have_search_button
  expect(@app.home_page).to have_im_feeling_lucky_button
end

Then('Search results for {string} load') do |string|
  expect(@app.search_results_page).to have_about_results
  expect(@app.search_results_page).to have_actual_results
  expect(@app.search_results_page).to have_search_bar
  expect(@app.search_results_page.search_bar.value).to eq string
end

Then('I no longer see the Google Home Page') do
  expect(@app.home_page).to have_no_im_feeling_lucky_button
end
