class RemoveImageUrlStringFromHeadline < ActiveRecord::Migration
  def change
    remove_column :headlines, :image_url, :string
    remove_column :headlines, :image_caption, :string
  end
end
