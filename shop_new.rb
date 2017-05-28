require 'byebug'

def shop
  running = true
  var = 0
  var2 = -1
  choice = false
  choice2 = false
  gold = 200
  lines = File.readlines('shop_items.dat')
  # weapons = []
  # lines.each do |line|
  #     unless line.include?("[")
  #       name, damage, cost = line.split(";")
  #       weapons << {"name" => name, "damage" => damage, "cost" => cost.chomp }
  #     end
  # end
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

    items = {}
    key = "default"
    lines.each do |line|
      line.chomp!
      if line[0] == "["
        key = line.gsub("[","").gsub("]","")
        items[key] = []
      else
        items[key] << line
      end
    end

  end
end

shop
