class CreatePickupScrapers < ActiveRecord::Migration
  def change
    create_table :pickup_scrapers do |t|

      t.timestamps
    end
  end
end
