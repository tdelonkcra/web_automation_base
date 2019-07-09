class SearchResultsPage < SitePrism::Page
  set_url_matcher %r{/search.*}

  element :search_bar, '[title="Search"]'
  element :about_results, '#resultStats'
  element :actual_results, '#search'
end
