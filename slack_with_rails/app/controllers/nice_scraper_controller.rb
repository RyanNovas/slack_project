class NiceScraperController < ApplicationController
  def say
      @view = NiceScraper.new.scrape
      # @view = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
    end
end
