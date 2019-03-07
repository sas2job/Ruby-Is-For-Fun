module AMixIn
    def who_am_i?
      puts "An existentialist, that's who."
    end
  end
  
  # String is already the parent class
  class DeepString < String
    # extend adds instance methods from AMixIn as class methods
    extend AMixIn
  end
  
  DeepString.who_am_i?
   #=> An existentialist, that's who.
  
  AMixIn.new
   #=> NoMethodError: undefined method ‘new’ for AMixIn:Module