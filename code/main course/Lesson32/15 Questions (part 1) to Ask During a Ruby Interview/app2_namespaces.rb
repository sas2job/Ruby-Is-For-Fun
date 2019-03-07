module ANamespace
    class AClass
      def initialize
        puts "Another object, coming right up!"
      end
    end
  end
  
  ANamespace::AClass.new
   #=> Another object, coming right up!