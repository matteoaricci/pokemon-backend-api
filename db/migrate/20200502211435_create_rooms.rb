class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :room_id
      t.integer :user_one
      t.integer :user_two
      t.string :url
      t.timestamps
    end
  end
end
