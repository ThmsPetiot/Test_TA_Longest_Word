class AddTotalGamesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :total_games, :integer
  end
end
