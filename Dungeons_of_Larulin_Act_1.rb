
def town
  running = true
  var = 0
  while running
    puts "[#{var}] Go to Dungeon [ X ]"
    puts "[#{var += 1}] Visit the Shop [ X ]"
    puts "[#{var += 1}] Visit the Blacksmithess [ X ]"
    puts "[#{var += 1}] Visit the Sorcerer [ X ]"
    puts "[#{var += 1}] View Inventory [ X ]"
    puts "[#{var += 1}] View Storage Chest [ X ]"
    puts "[#{var += 1}] Save and Quit [ X ]"
    go_to = gets.chomp.to_i
    if go_to == 0
      require_relative "lvl_1_monster.rb"
    elsif go_to == 1

    elsif go_to == 2

    elsif go_to == 3

    elsif go_to == 4

    elsif go_to == 5

    elsif go_to == 6

    end
  end
end

town
