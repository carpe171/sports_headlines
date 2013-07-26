class AddTypeColumnToHeadlines < ActiveRecord::Migration
  def change
    add_column :headlines, :type, :string
  end
end
