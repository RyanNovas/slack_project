class ShakespeareScraper < ActiveRecord::Base
include Scrape
@@website = "http://www.pangloss.com/seidel/Shaker/"

  def initialize
    @page = scraper(@@website)
  end


  def scrape
    @page.css("p").first.text.strip
  end

end
