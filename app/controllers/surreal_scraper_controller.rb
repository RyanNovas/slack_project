class SurrealScraperController < ApplicationController
  def say
      @params = params
      @view = SurrealScraper.new.scrape
          render layout: false
      # @view = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
    end
end
