class RemoveImageUrl1FromHeadline < ActiveRecord::Migration
  def change
    remove_column :headlines, :image_url_1, :string
    remove_column :headlines, :image_caption_1, :string
    remove_column :headlines, :image_url_2, :string
    remove_column :headlines, :image_caption_2, :string
  end
end
