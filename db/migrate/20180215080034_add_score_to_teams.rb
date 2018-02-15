class AddScoreToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :score, :integer
    add_column :teams, :played, :integer
    add_column :teams, :rank, :integer
  end
end
