class Animal
    def run
      puts "Animal is running..."
    end
end

animal = Animal.new
animal.run

animal.send(:run)

animal.method(:run).call
