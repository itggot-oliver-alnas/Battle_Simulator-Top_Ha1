
def town
  running = true
  var = 0
  while running
    puts "[#{var}] Go to Dungeon"
    puts "[#{var += 1}] Visit the Shop"
    puts "[#{var += 1}] Visit the Blacksmithess [ X ]"
    puts "[#{var += 1}] Visit the Sorcerer [ X ]"
    puts "[#{var += 1}] View Inventory [ X ]"
    puts "[#{var += 1}] View Storage Chest [ X ]"
    puts "[#{var += 1}] Save and Quit [ X ]"
    go_to = gets.chomp.to_i
    if go_to == 0
      system "ruby goblin.rb"
    elsif go_to == 1
      system "ruby shop_v2.rb"
    elsif go_to == 2

    elsif go_to == 3

    elsif go_to == 4

    elsif go_to == 5

    elsif go_to == 6

    end
    var = 0
  end
end

town
