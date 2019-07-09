class Google
  def initialize; end

  def home_page
    @home_page ||= HomePage.new
  end
end
