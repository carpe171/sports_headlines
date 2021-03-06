class CreateNbaHeadlines < ActiveRecord::Migration
  def change
    create_table :nba_headlines do |t|
      t.string :headline
      t.text :description
      t.datetime :last_modified
      t.integer :espn_id
      t.text :href
      t.text :image_url
      t.text :image_caption

      t.timestamps
    end
  end
end
