class WelcomeController < ApplicationController

  def index
    require 'nokogiri'
    require 'open-uri'
    @scrape = Nokogiri::HTML(open("http://guides.rubyonrails.org/active_record_basics.html"))
  end
end
