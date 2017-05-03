def shop
  running = true
  var = 0
  var2 = -1
  choice = false
  choice2 = false

  weapon_0 = false
  weapon_1 = false
  weapon_2 = false
  armor_0 = false
  armor_1 = false
  shield_0 = false
  shield_1 = false
  puts "


Hello and welcome to the general store!"
while running
  if choice == false
    puts "
So, what'll it be?"
  else
    if choice2 == false
      puts "Very well. Anything else?"
    else
      puts "Thank you for your business! Anything else?"
    end
  end
  puts "[#{var}] Weapons"
  puts "[#{var += 1}] Shields"
  puts "[#{var += 1}] Armor"
  input = gets.chomp.to_i
  if input == 0
    if weapon_0 == false
      puts "[#{var2 += 1}] Dagger"
    elsif weapon_1 == false
      puts "[#{var2 += 1}] Longsword"

    end
  end
end

end
