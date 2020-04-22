class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type1
      t.string :type2, default: :null
      t.string :url
      t.integer :hp_stat
      t.integer :attack_stat
      t.integer :defense_stat
      t.integer :sp_attack_stat
      t.integer :sp_defense_stat
      t.integer :speed_stat
      t.timestamps
    end
  end
end
