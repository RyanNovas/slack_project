class MeanScraper < ActiveRecord::Base
  include Scrape
  @@website = "http://www.insultgenerator.org"

  def scrape
    @page.css(".wrap")
  end

end
