def room_1
  char_health = 50
  char_mana_max = 20
  #char_health = File.read("char.txt")
  monster_health = 20
  monster_speed = 1
  monster_damage = 5
  var = 0
  running = true
  system"cls"
  puts "


Battle start!"
  puts "A goblin approaches!"
  sleep(3)
  while running == true
    puts "



Your health: #{char_health}
Goblin HP: #{monster_health}

[#{var}] ATTACK"
    if char_mana_max > 0
      puts "[#{var += 1}] MAGIC"
    end
    puts "[#{var += 1}] ITEM"
    puts "[#{var += 1}] DEFEND"
    puts "[#{var += 1}] FLEE"
    var = 0
    #running = false
    input = gets.chomp.to_i
    if input == 0
      monster_health -= char_damage
    elsif char_mana_max > 0
      if input == 1
        puts ""
        #Magic attack menu
      elsif input == 2
        puts ""
        #Relic and item menu
      elsif input == 3
        monster_damage = monster_damage*0.2
      elsif input == 4
        puts "You flee!"
        sleep(1.5)
        return
      end
    elsif input == 1
      puts ""
      #Relic and item menu
    elsif input == 2
      monster_damage = monster_damage*0.2
    elsif input == 3
      puts "You flee!"
      sleep(1.5)
      return
    end
    system"cls"
  end


end

room_1
