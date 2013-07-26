class AddSiIdToHeadlines < ActiveRecord::Migration
  def change
    add_column :si_headlines, :si_id, :string
  end
end
