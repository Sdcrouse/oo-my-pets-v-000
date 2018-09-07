class Owner
  # code goes here
  attr_reader :species 
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.all 
    @@all
  end 
end