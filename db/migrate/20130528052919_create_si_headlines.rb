class CreateSiHeadlines < ActiveRecord::Migration
  def change
    create_table :si_headlines do |t|
      t.string :headline
      t.text :description
      t.datetime :last_modified
      t.integer :si_id
      t.text :href
      t.text :image_url
      t.text :image_caption

      t.timestamps
    end
  end
end
