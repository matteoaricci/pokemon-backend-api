# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_24_185433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.integer "power"
    t.integer "accuracy"
    t.string "move_type"
    t.integer "power_points"
    t.integer "priority"
    t.string "damage_class"
    t.integer "effect_chance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemon_moves", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "move_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemon_teams", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "user_team_id"
    t.integer "hp_ev"
    t.integer "attack_ev"
    t.integer "defense_ev"
    t.integer "spattack_ev"
    t.integer "spdefense_ev"
    t.integer "speed_ev"
    t.integer "hp_iv"
    t.integer "attack_iv"
    t.integer "defense_iv"
    t.integer "spattack_iv"
    t.integer "spdefense_iv"
    t.integer "speed_iv"
    t.integer "move1_id"
    t.integer "move2_id"
    t.integer "move3_id"
    t.integer "move4_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "type1"
    t.string "type2", default: "null"
    t.string "url"
    t.integer "hp_stat"
    t.integer "attack_stat"
    t.integer "defense_stat"
    t.integer "sp_attack_stat"
    t.integer "sp_defense_stat"
    t.integer "speed_stat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_teams", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "trainer_name"
    t.string "password_digest"
    t.string "username"
  end

end
