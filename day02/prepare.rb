
File.new("input", "r").readlines.each_with_index do |line, idx|
  line.chomp!
  m = line.match(/Game (\d+):(.+)/)
  game = m[1]
  line = m[2]
  line.split(";").map{|hand| hand.split(",").map{|cubes| /(\d+) (\w+)/.match(cubes).captures}}.each_with_index do |hand, idx|
    hand.each do |count, color|
        # game, hand, count, color
        STDOUT.puts "%s %i %s %s" % [game, idx, count, color]
    end
  end
end
