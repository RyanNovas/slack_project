class CreateShakespeareScrapers < ActiveRecord::Migration
  def change
    create_table :shakespeare_scrapers do |t|

      t.timestamps
    end
  end
end
