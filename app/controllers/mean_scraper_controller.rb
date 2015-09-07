class MeanScraperController < ApplicationController
  def say
      @params = params
      @view = MeanScraper.new.scrape.gsub("&#39;", "'")
          render layout: false
    end
  end
