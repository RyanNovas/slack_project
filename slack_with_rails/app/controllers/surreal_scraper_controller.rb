class SurrealScraperController < ApplicationController
  def say
      @view = SurrealScraper.new.scrape
      # @view = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
    end
end
