class Owner
  @@all = []
  attr_accessor :pets, :name, :species

  def initialize(name)
      @name = name
      @pets = {fishes:[], cats: [], dogs:[]}
      @species = "human"
      @@all << self
  end

  def sell_pets
    self.pets.each {|k, v| v.each {|pet| pet.mood = "nervous"}}
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
