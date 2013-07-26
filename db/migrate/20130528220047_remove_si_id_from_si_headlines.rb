class RemoveSiIdFromSiHeadlines < ActiveRecord::Migration
  def change
    remove_column :si_headlines, :si_id, :integer
  end
end
