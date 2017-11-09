class Owner
  @@all 
  attr_accessor :pets, :name, :species

  def initialize(name)
      @name = name
      @pets = {fishes:[], cats: [], dogs:[]}
      @species = []
      @@all << self
  end

  def sell_pets
    

  def self.all
    @@all
  end

  def self.reset
    @@all.clear
  end

  def self.count
    @@all.size
  end


end
