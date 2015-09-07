class NiceScraperController < ApplicationController
  def say
      @params = params
      @view = NiceScraper.new.scrape.gsub("&#39;", "'")
          render layout: false
      # @view = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
    end
end
