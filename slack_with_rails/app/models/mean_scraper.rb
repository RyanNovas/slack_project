class MeanScraper < ActiveRecord::Base
  include Scrape
  @@website = "http://www.insultgenerator.org"

  def initialize
    @page = scraper(@@website).css(".wrap")
  end

  # def scrape
  #   @page.css(".wrap")
  # end

end
