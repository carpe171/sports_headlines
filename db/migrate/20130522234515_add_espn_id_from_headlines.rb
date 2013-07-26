class AddEspnIdFromHeadlines < ActiveRecord::Migration
  def change
    add_column :headlines, :espn_id, :integer
  end
end
