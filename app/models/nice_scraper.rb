class NiceScraper < ActiveRecord::Base
  include Scrape
  @@website = "http://www.supersilly.com/cgi/multicomp.cgi"

  def scrape
    @page = scraper(@@website).css("body").text.split("\n")[1]
  end

end
