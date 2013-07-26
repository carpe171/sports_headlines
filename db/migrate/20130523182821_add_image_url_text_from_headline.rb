class AddImageUrlTextFromHeadline < ActiveRecord::Migration
  def change
    add_column :headlines, :image_url, :text
    add_column :headlines, :image_caption, :text
  end
end
