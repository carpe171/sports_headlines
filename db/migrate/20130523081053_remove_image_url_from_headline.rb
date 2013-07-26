class RemoveImageUrlFromHeadline < ActiveRecord::Migration
  def change
    remove_column :headlines, :image_url, :string
  end
end
