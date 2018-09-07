class Owner
  # code goes here
  attr_accessor :name, :pets
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
  
  def say_species 
    "I am a #{self.species}."
  end
  
  def buy_fish(fish_name)
    self.pets[:fishes] << Fish.new(fish_name)
  end
  
  def buy_cat(cat_name)
    self.pets[:cats] << Cat.new(cat_name)
  end
  
  def buy_dog(dog_name)
    self.pets[:dogs] << Dog.new(dog_name)
  end
  
  def walk_dogs 
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats 
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end 
  
  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end 
  
end