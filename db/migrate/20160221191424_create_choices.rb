class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.integer :game_id
      t.string :player_one_choice
      t.string :player_two_choice
      t.integer :winner_id
      t.string :result

      t.timestamps
    end
  end
end
