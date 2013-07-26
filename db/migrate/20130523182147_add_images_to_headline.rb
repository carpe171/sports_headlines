class AddImagesToHeadline < ActiveRecord::Migration
  def change
    add_column :headlines, :image_url, :string
    add_column :headlines, :image_caption, :string
  end
end
