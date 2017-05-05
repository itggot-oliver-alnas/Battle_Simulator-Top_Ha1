lines = File.readlines('weapons.dat')
weapons = []
lines.each do |line|
    name, damage, cost = line.split(";")
    weapons << {"name" => name, "damage" => damage, "cost" => cost.chomp }
    # weapons << {name:name, damage:damage, cost:cost }
end

weapons.each do |weapon|
    print "Name: "
    print weapon["name"]
    print " Damage: "
    print weapon["damage"]
    print " Cost: "
    print weapon["cost"]
    puts " Gazillion gold pieces"
end