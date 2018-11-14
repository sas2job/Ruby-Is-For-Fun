a = Array.new(4) { Array.new(5){ rand(rand(1..9))}}
a.each {|var| p var}