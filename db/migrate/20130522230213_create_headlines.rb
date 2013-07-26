class CreateHeadlines < ActiveRecord::Migration
  def change
    create_table :headlines do |t|
      t.string :headline
      t.text :description
      t.datetime :last_modified
      t.string :href
      t.string :image_caption
      t.string :image_url
      t.string :espn_id

      t.timestamps
    end
  end
end
