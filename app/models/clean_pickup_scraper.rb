class CleanPickupScraper < ActiveRecord::Base
include Scrape
@@website = 'http://www.pickuplinesgalore.com/cheesy.html'

  def scrape
    array = []
    @page = scraper(@@website).css(".style25").each do |line|
      array << line.text
    end
    array.sample
  end

end
