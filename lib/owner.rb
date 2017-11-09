class Owner
  @@all  # code goes here
  attr_accessor :pets, :name
  
  def initialize(name)
      @name = name
      @pets = {fishes:[], cats: [], dogs:[]}
      @species = []
  end

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
