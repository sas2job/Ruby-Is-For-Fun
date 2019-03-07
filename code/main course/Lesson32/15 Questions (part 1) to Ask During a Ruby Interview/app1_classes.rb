class WhatAreClasses
    def initialize
      @data = "I'm instance data of this object. Hello."
    end
  
    def method
      puts @data.gsub("instance", "altered")
    end
  end
  
  object = WhatAreClasses.new
  object.method

  #=> I'm altered data of this object. Hello.