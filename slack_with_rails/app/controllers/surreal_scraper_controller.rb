class SurrealScraperController < ApplicationController
  def say
      @params
      @view = SurrealScraper.new.scrape
      # @view = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
    end
end
