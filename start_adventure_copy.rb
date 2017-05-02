  @gold = File.read("starting_gold.rb").to_i

def adventure_start
  gold_cost = 0
  puts "



  Good day! My name is I.S.A.A.C. and I have prepared a battle simulator for you."
  sleep(6)
  system"cls"
  puts "

  First off, you will choose a difficulty."
  sleep(4)
  system"cls"
  puts "

  Select a number between 1 and 5. 1 is the equivalent of a tutorial monster and 5 equals to a boss monster."
  diff = 0
  diff_choice = gets.chomp.to_i
  if diff_choice > 5 or < 1
    puts "Stop fucking around."
    sleep(3)
    system"cls"
    return
  elsif diff_choice == 1
    diff = 1
  elsif diff_choice == 2
    diff = 2
  elsif diff_choice == 3
    diff = 3
  elsif diff_choice == 4
    diff = 4
  elsif diff_choice == 5
    diff = 5
  end
  puts "Good! Now to choose your gear."
  sleep(2)
  puts "You have 100 gold to spend."
  puts "Buy a weapon. Input 0 for a dagger (10 gold), 1 for a longsword (20 gold), 2 for a spear (15 gold)."
  wpn_choice = gets.chomp.to_i
  if wpn_choice == 0
    @weapon = 0
  elsif wpn_choice == 1
    @weapon = 1
  elsif wpn_choice == 2
    @weapon = 2
  end
  if @weapon == 0
    gold_cost += 10
  elsif @weapon == 1
    gold_cost += 20
  elsif @weapon == 2
    gold_cost += 15
  end
  @gold -= gold_cost
  gold_cost = 0
  puts "Do you want to buy a shield?"
  puts "You have #{@gold} gold."
  shield_choice = gets.chomp
  if shield_choice == "Yes" || "yes" || "Yes." || "yes." || "Yis" || "yis" || "Yis." || "yis." || "y" || "Y" || "Yörl" || "yörl" || "Yid" || "yid" || "0"
    puts "Wooden or steel? 0 for wood (10 gold), 1 for steel (20 gold). Input 'no' to cancel."
    shield_choice2 = gets.chomp.to_i
    if shield_choice2 == 0
      @shield = 0
    elsif shield_choice2 == 1
      @shield = 1
    else

    end
  end
  if @shield == 0
    gold_cost += 10
  elsif @shield == 1
    gold_cost += 20
  end
  @gold -= gold_cost
  gold_cost = 0
  puts "Do you want buy any armor?"
  puts "You have #{@gold} gold."
  armor_choice = gets.chomp
  if armor_choice == "Yes" || "yes" || "Yes." || "yes." || "Yis" || "yis" || "Yis." || "yis." || "y" || "Y" || "Yörl" || "yörl" || "Yid" || "yid" || "0"
    puts "Leather or steel? 0 for leather (20 gold), 1 for steel (40 gold)."
    armor_choice2 = gets.chomp.to_i
    if @armor_choice2 == 0
      @armor = 0
      gold_cost = 20
    else
      @armor = 1
      gold_cost = 40
    end
  else

  end
  @gold -= gold_cost
  gold_cost = 0
  puts "You have #{@gold} gold left."
end

# def gold_count
#   gold_cost = 0
#   if @weapon == 0
#     gold_cost += 10
#   elsif @weapon == 1
#     gold_cost += 20
#   elsif @weapon == 2
#     gold_cost += 15
#   end
#   if @shield == 0
#     gold_cost += 10
#   elsif @shield == 1
#     gold_cost += 20
#   end
#   if @armor == 0
#     gold_cost += 20
#   elsif @armor == 1
#     gold_cost += 40
#   end
# end

adventure_start
