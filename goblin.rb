def gob
  monster_health = 20
  monster_damage = 5
  monster_speed = 1
  char = []
  lines = File.readlines('char.dat')
  lines.each do |line|
    cat, value = line.split(";")
    char << {"Category" => cat, "Value" => value.chomp}
  end
  puts char
end

gob
