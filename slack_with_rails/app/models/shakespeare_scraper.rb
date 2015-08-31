class ShakespeareScraper < ActiveRecord::Base
require 'activerecord'
include Scrape
@@website = "http://www.pangloss.com/seidel/Shaker/"

  def initialize
    @page = scrape(@@website)
    binding.pry
  end

  def scrape
    @page.css("p").first.text.strip
  end

end
