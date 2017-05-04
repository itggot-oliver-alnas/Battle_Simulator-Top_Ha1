def shop
  running = true
  var = 0
  var2 = -1
  choice = false
  choice2 = false
  buy_dagger = false
  buy_lsword = false
  buy_lsword2 = false
  buy_spear = false
  buy_spear2 = false
  buy_spear3 = false
  gold = 200

#Rows 8-14 are to be saved in other files

  weapon = -1
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
    puts "[#{var += 1}] Shields [ X ]"
    puts "[#{var += 1}] Armor [ X ]"
    puts "[#{var += 1}] Cancel [ X ]"
    var = 0
    input = gets.chomp.to_i
    system"cls"
    if input == 0
      if weapon_0 == false
        puts "[#{var2 += 1}] Dagger"
        buy_dagger = true
        weapon = 0
      end
      if weapon_1 == false
        puts "[#{var2 += 1}] Longsword"
        buy_lsword = true
        buy_lsword2 = true
        weapon = 1
      end
      if weapon_2 == false
        puts "[#{var2 += 1}] Spear"
        buy_spear = true
        buy_spear2 = true
        buy_spear3 = true
        weapon = 2
      end
      # if weapon_0 == true && weapon_1 = true && weapon_2 = true
      #   puts "You've bought all the weapons I had in stock."
      # end
      var2 = -1
      choice = true
      buy = gets.chomp.to_i
      system"cls"
      if buy == 0 && buy_dagger == true && gold >= 15#cost of dagger
        #Buy dagger
        weapon_0 = true
        buy_dagger = false
        choice2 = true
      elsif buy == 0 && buy_lsword == true && gold >= 15#cost of longsword
        #Buy longsword
        weapon_1 = true
        buy_lsword = false
        choice2 = true
      elsif buy == 0 && buy_spear == true && gold >= 15#cost of spear
        #Buy spear
        weapon_2 = true
        buy_spear = false
        choice2 = true
      elsif buy == 1 && buy_lsword2 == true && gold >= 15#cost of longsword
        #Buy longsword
        weapon_1 = true
        buy_lsword2 = false
        choice2 = true
      elsif buy == 1 && buy_spear2 == true && gold >= 15#cost of spear
        #Buy spear
        weapon_2 = true
        buy_spear2 = false
        choice2 = true
      elsif buy == 2 && buy_spear3 == true && gold >= 15#cost of spear
        #Buy spear
        weapon_2 = true
        buy_spear3 = false
        choice2 = true
      end
    end
  end
end

shop
