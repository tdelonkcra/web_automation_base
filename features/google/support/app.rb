class Google
  def initialize; end

  def home_page
    @home_page ||= HomePage.new
  end

  def search_results_page
    @search_results_page ||= SearchResultsPage.new
  end
end
