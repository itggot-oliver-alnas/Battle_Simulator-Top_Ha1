def shop
  running = true
  var = 0
  var2 = -1
  choice = false
  choice2 = false
  gold = 200
  lines = File.readlines('shop_items.dat')
  weapons = []
  lines.each do |line|
      name, damage, cost = line.split(";")
      weapons << {"name" => name, "damage" => damage, "cost" => cost.chomp }
  end
  puts "
Welcome to the general store!"
  while running
    if choice == false
      puts "
      So, what'll it be?"
    else
      if choice2 == false
        puts "Very well."
      else
        puts "Here you go. Anything else?"
      end
    end

    case lines
    when "[Shop Categories]"
      lines.each do |cat, index|
        puts "[#{index}] #{cat}"

      end

    end

    weapons.each_with_index do |weapon, index|
      puts "[#{index}] #{weapon["name"]}"
    end

    # puts "[#{var += 1}] Shields [ X ]"
    # puts "[#{var += 1}] Armor [ X ]"
    # puts "[#{var += 1}] Cancel [ X ]"
    var = 0
   input = gets.chomp.to_i
    system"cls"
      weapons.each_with_index do |weapon, index|
        print "[#{index}]"
        print weapon["name"]
        print ": " + weapon["damage"]
        print " Damage "
        #print " Cost: "
        print weapon["cost"]
        puts " gold"
      end

    end
  end

end

shop
