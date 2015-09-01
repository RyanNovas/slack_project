class NiceScraper < ActiveRecord::Base
include Scrape
@@website = "http://www.supersilly.com/cgi/multicomp.cgi"

  # def initialize
  #   @page = scraper(@@website)
  # end

  def scrape
    @page = scraper(@@website).css("body").text.split("\n")[1]
  end



end
