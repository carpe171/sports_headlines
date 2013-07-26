class RemoveImageCaptionFromHeadline < ActiveRecord::Migration
  def change
    remove_column :headlines, :image_caption, :string
  end
end
