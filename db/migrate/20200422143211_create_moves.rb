class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :power
      t.integer :accuracy
      t.string :move_type
      t.integer :power_points
      t.integer :priority
      t.string :damage_class
      t.integer :effect_chance
      t.timestamps
    end
  end
end
