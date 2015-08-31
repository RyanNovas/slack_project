class CreateSurrealScrapers < ActiveRecord::Migration
  def change
    create_table :surreal_scrapers do |t|

      t.timestamps
    end
  end
end
