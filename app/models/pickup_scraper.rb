class PickupScraper < ActiveRecord::Base
  include Scrape
  @@website = "http://www.pickuplinegen.com/"

  def scrape
    @page = scraper(@@website).css('#content').text
  end

end
