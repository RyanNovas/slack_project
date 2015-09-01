class CreateMeanScrapers < ActiveRecord::Migration
  def change
    create_table :mean_scrapers do |t|

      t.timestamps
    end
  end
end
