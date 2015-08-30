require_relative '../bin/environment'
require 'open-uri'

class MeanScraper

  def initialize(website)
    @page =  Nokogiri::HTML(open(website))
  end

  def scrape
    binding.pry
    @page.css(".wrap")
  end
end
