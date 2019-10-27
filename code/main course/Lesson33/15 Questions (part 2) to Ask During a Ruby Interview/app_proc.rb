# wants a proc, a lambda, AND a block
def three_ways(proc, lambda, &block)
    proc.call
    lambda.call
    yield # like block.call
    puts "#{proc.inspect} #{lambda.inspect} #{block.inspect}"
  end
  
  anonymous = Proc.new { puts "I'm a Proc for sure." }
  nameless  = lambda { puts "But what about me?" }
  
  three_ways(anonymous, nameless) do
    puts "I'm a block, but could it be???"
  end
   #=> I'm a Proc for sure.
   #=> But what about me?
   #=> I'm a block, but could it be???
   #=> ## wants a proc, a lambda, AND a block
def three_ways(proc, lambda, &block)
  proc.call
  lambda.call
  yield # like block.call
  puts "#{proc.inspect} #{lambda.inspect} #{block.inspect}"
end

anonymous = Proc.new { puts "I'm a Proc for sure." }
nameless  = lambda { puts "But what about me?" }

three_ways(anonymous, nameless) do
  puts "I'm a block, but could it be???"
end
 #=> I'm a Proc for sure.
 #=> But what about me?
 #=> I'm a block, but could it be???
 #=> #<Proc:0x241525490@app.rb:9> #<Proc:0x241525440@app.rb:10 (lambda)> #<Proc:0x241525418@app.rb:12>