class AddHrefToHeadlines < ActiveRecord::Migration
  def change
    add_column :headlines, :href, :text
  end
end
