class AddTeamSportsIdsToHeadlines < ActiveRecord::Migration
  def change
    add_column :headlines, :sport_id, :integer
    add_column :headlines, :team_id, :integer
  end
end
