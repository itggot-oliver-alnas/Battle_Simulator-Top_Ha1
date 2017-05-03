#require_relative "start_adventure.rb"

def character_damage
  char_damage = 0
  if weapon == 0
    char_damage = 5
    @char_speed = 1.2
  elsif weapon == 1 or weapon == 2
    char_damage = 10
    @char_speed = 1
  end
  return char_damage
end

def shield_stats
  if shield == 0
    #Stats and reductions (find in compendium when written)
  elsif shield == 1
    #Stats and reductions (find in compendium when written)
  end
  return shield_stats
end

def armor_stats
  if armor == 0
    @dmg_reduction = 0.85
    @char_speed = @char_speed + 0.1
  elsif armor == 1
    @dmg_reduction = 0.7
    @char_speed = @char_speed - 0.1
  end
  return dmg_reduction
#Damage reduction depends on what shield and armor is equepped. Look in compendium for stats, then come back here and write the code. monster_damage*dmg_reduction
end
