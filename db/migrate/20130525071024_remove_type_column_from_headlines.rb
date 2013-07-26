class RemoveTypeColumnFromHeadlines < ActiveRecord::Migration
  def change
    remove_column :headlines, :type, :string
  end
end
