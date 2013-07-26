class RemoveEspnIdFromHeadlines < ActiveRecord::Migration
  def change
    remove_column :headlines, :espn_id, :string
  end
end
