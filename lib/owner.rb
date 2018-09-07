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
  
  def self.reset_all 
    @@all.clear
  end
  
  def self.count 
    self.all.size
  end 
  
 
end