module Scrape

  def scraper(website)
    Nokogiri::HTML(open(website))
  end

end
