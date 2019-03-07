class AccessLevel
    def something_interesting
      another = AccessLevel.new
      another.public_method
      another.protected_method
      another.private_method
    end
  
    def public_method
      puts "Public method. Nice to meet you."
    end
  
    protected
  
    def protected_method
      puts "Protected method. Sweet!"
    end
  
    private 
  
    def private_method
      puts "Incoming exception!"
    end
  end
  
  AccessLevel.new.something_interesting
   #=> Public method.  Nice to meet you.
   #=> Protected method.  Sweet!
   #=> NoMethodError: private method ‘private_method’ called for
   #=>  #<AccessLevel:0x898c8>