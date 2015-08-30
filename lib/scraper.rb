require_relative '../bin/environment'

class Scraper
  attr_accessor :db

  def initialize(database)
    @page =  Nokogiri::HTML(open('pokemon_index.html'))
    @pokemon_list = []
    @pokemon_types = []
    @pokemon_hash = {}
    @db = database
  end


  def scrape
    @page.css(".infocard-tall").each do |pokemon|
      name = pokemon.css(".ent-name").text
      type = pokemon.css(".aside").text
      Pokemon.save(name, type, db)
    end
  end







  #   @page.css(".ent-name").each { |x| @pokemon_list << x.text.to_sym}
  #   @page.css(".aside").each { |x| @pokemon_types << x.text}
  #   #@pokemon_hash[@pokemon_list.zip(@pokemon_types)]
  # end




end

# test = Scraper.new(SQLite3::Database.new(':memory:'))
# #binding.pry
# test.scrape
