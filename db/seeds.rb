require 'poke-api-v2'

PokemonMove.destroy_all






i = 1
while i <= 86
    the_move = PokeApi.get(move: i)
    Move.create(name: the_move.name, power: the_move.power, accuracy: the_move.accuracy, move_type: the_move.type.name, power_points: the_move.pp, priority: the_move.priority, damage_class: the_move.damage_class.name, effect_chance: the_move.effect_chance)
    i += 1
end

Move.create(name: 'thunder', power: 120, accuracy: 70, move_type: 'electric', power_points: 10, priority: 0, damage_class: 'special', effect_chance: 30)

i = 88
while i <= 251
    the_move = PokeApi.get(move: i)
    Move.create(name: the_move.name, power: the_move.power, accuracy: the_move.accuracy, move_type: the_move.type.name, power_points: the_move.pp, priority: the_move.priority, damage_class: the_move.damage_class.name, effect_chance: the_move.effect_chance)
    i += 1
end

i = 1
while i <= 251
    poke = PokeApi.get(pokemon: i)
    
    spe = poke.stats[0].base_stat
    spd = poke.stats[1].base_stat
    spa = poke.stats[2].base_stat
    defe = poke.stats[3].base_stat
    atk = poke.stats[4].base_stat
    hp = poke.stats[5].base_stat
    
    nam = poke.name
    
    if poke.types.length == 2
        t1 = poke.types[0].type.name
        t2 = poke.types[1].type.name
    else 
        t1 = poke.types[0].type.name
        t2 = 'null'
    end
    
    Pokemon.create(name: nam, type1: t1, type2: t2, hp_stat: hp, attack_stat: atk, defense_stat: defe, sp_attack_stat: spa, sp_defense_stat: spd, speed_stat: spe)
    i += 1
end
i = 1

while i <= 251
    current_poke = Pokemon.find(i)
    move_arr = []
    fetch_poke_moves = PokeApi.get(pokemon: current_poke.name).moves
    fetch_poke_moves.each do |mov|
        mov.version_group_details.each do |thing|
             if thing.version_group.name == 'gold-silver' || thing.version_group.name == 'crystal' || thing.version_group.name == 'red-blue' || thing.version_group.name == 'yellow'
                move_arr.push(mov.move.name)
             end
            end
    end
    move_arr.uniq.each do |mov|
        current_poke.id 
        current_move = Move.find_by(name: mov)
        PokemonMove.create(pokemon_id: current_poke.id, move_id: current_move.id)
        pp current_poke.id 
        pp current_move.id
    end
    i += 1
end