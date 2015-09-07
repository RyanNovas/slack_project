class ShakespeareScraperController < ApplicationController
  def say
      @params = params
      @view = ShakespeareScraper.new.scrape.gsub("&#39;", "'")
          render layout: false
    end
end
