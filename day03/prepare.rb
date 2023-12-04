
File.new("input", "r").readlines.each_with_index do |line, idx|
  line.chomp!
  STDOUT.puts "%i %s" % [idx, line]
end
