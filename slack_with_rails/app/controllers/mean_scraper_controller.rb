class MeanScraperController < ApplicationController
  def say
      @view = MeanScraper.new.scrape
      # @view = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
    end
  end
