Given("I visit the website's homepage") do
  @app.example_page.load

  expect(@app.example_page).to be_displayed
end

Then("the website's homepage loads") do
  expect(@app.example_page).to be_all_there
end
