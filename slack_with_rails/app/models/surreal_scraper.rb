class SurrealScraper < ActiveRecord::Base
include Scrape
@@website = "http://www.madsci.org/cgi-bin/cgiwrap/~lynn/jardin/SCG"

  def initialize
    @page = scraper(@@website)
  end

  def scrape
    @page.css("h2").text.strip
  end

end
