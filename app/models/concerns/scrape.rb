module Scrape
  require 'nokogiri'
  require 'open-uri'

  def scraper(website)
    Nokogiri::HTML(open(website))
  end

end
