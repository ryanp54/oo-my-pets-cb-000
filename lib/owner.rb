class Owner
  @@all  # code goes here

  def self.all
    @@all
  end

  def self.reset
    @@all.clear
  end

end
