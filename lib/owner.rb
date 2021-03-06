class Owner
  @@all = []
  attr_accessor :pets, :name
  attr_reader :species

  def initialize(name)
      @name = name
      @pets = {fishes:[], cats: [], dogs:[]}
      @species = "human"
      @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each { |pet| pet.mood = "happy" }
  end
  def play_with_cats
    self.pets[:cats].each { |pet| pet.mood = "happy" }
  end
  def feed_fish
    self.pets[:fishes].each { |pet| pet.mood = "happy" }
  end

  def list_pets
    amounts = self.pets.collect { |k, v| v.size}
    "I have #{amounts[0]} fish, #{amounts[2]} dog(s), and #{amounts[1]} cat(s)."
  end

  def sell_pets
    self.pets.each { |k, v| v.each { |pet| pet.mood = "nervous" }}
    self.pets = {fishes:[], cats: [], dogs:[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end


end
