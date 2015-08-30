require_relative '../bin/environment'
require 'open-uri'

class ShakespeareScraper

  def initialize(website)
    @page =  Nokogiri::HTML(open(website))
  end

  def scrape
    @page.css("p").first.text.strip
  end
end
