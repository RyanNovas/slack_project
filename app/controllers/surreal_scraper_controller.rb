class SurrealScraperController < ApplicationController
  def say
      @params = params
      @view = SurrealScraper.new.scrape.gsub("’", "'")
          render layout: false

    end
end
