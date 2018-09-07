class Owner
  # code goes here
  attr_reader :species 
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end
end