class PickupScraperController < ApplicationController
  def say
      @params = params
      @view = PickupScraper.new.scrape.gsub("’", "'")
          render layout: false
      # @view = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
  end

end
