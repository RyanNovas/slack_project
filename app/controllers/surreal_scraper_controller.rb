class SurrealScraperController < ApplicationController
  def say
      @params = params
      @view = SurrealScraper.new.scrape.gsub("&#39;", "'")
          render layout: false

    end
end
