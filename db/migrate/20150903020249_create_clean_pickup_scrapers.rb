class CreateCleanPickupScrapers < ActiveRecord::Migration
  def change
    create_table :clean_pickup_scrapers do |t|

      t.timestamps
    end
  end
end
