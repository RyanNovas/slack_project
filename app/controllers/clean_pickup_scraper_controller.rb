class CleanPickupScraperController < ApplicationController

  def say
      @params = params
      @view = CleanPickupScraper.new.scrape.gsub("&#39;", "'")
          render layout: false
  end


end
