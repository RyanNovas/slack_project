class ShakespeareScraperController < ApplicationController
  def say
      @view = ShakespeareScraper.new.scrape
      # @view = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
    end
end
