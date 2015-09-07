class PickupScraperController < ApplicationController
  def say
      @params = params
      @view = PickupScraper.new.scrape.gsub("&#39;", "'")
          render layout: false
  end

end
