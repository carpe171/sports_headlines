class RemoveHrefFromHeadlines < ActiveRecord::Migration
  def change
    remove_column :headlines, :href, :string
  end
end
