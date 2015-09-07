class ShakespeareScraper < ActiveRecord::Base
include Scrape
@@website = "http://www.pangloss.com/seidel/Shaker/"

  def scrape
    @page = scraper(@@website).css("p").first.text.strip
  end


end
