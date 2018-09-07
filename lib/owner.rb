class Owner
  # code goes here
  attr_reader :species 
  
  def initialize
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
  end
end