require_relative '../bin/environment'
require 'open-uri'

class NiceScraper

  def initialize(website)
    @page =  Nokogiri::HTML(open(website))
  end


  def scrape
    @page.css("body").text.split("\n")[1]
  end



end

test = NiceScraper.new("http://www.supersilly.com/cgi/multicomp.cgi")
test.scrape
