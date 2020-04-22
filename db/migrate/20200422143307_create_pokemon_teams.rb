class CreatePokemonTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_teams do |t|
      t.integer :pokemon_id
      t.integer :user_team_id
      t.integer :hp_ev
      t.integer :attack_ev
      t.integer :defense_ev
      t.integer :spattack_ev
      t.integer :spdefense_ev
      t.integer :speed_ev
      t.integer :hp_iv
      t.integer :attack_iv
      t.integer :defense_iv
      t.integer :spattack_iv
      t.integer :spdefense_iv
      t.integer :speed_iv
      t.integer :move1_id
      t.integer :move2_id
      t.integer :move3_id
      t.integer :move4_id

      t.timestamps
    end
  end
end