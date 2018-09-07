class Fish
  # code goes here
  attr_accessor :mood 
  attr_reader :mood
  
  def initialize(name)
    @name = name
    self.mood = "nervous"
  end
end