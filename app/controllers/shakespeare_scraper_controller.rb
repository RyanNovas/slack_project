class ShakespeareScraperController < ApplicationController
  def say
      @params = params
      @view = ShakespeareScraper.new.scrape.gsub("’", "'")
          render layout: false
      # @view = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
    end
end
