class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.integer :score
      t.integer :best_game
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
