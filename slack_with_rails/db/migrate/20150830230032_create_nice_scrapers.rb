class CreateNiceScrapers < ActiveRecord::Migration
  def change
    create_table :nice_scrapers do |t|

      t.timestamps
    end
  end
end
