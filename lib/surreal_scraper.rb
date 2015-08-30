require_relative '../bin/environment'
require 'open-uri'

class SurrealScraper

  def initialize(website)
    @page =  Nokogiri::HTML(open(website))
  end

  def scrape
    @page.css("h2").text.strip
  end
end

test = SurrealScraper.new("http://www.madsci.org/cgi-bin/cgiwrap/~lynn/jardin/SCG")
test.scrape
