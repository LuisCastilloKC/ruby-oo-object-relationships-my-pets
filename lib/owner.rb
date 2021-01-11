class Owner
  attr_reader :name, :species

  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    save()
  end

  def save
    @@all << self 
  end

  def say_species
    "I am a human."
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    name = Cat.new(name, self)
  end

  def buy_dog(name)
    name = Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.map {|dog| dog.owner == self ? dog.mood = "happy" : nil}
  end

  def feed_cats
    Cat.all.map {|cat| cat.owner == self ? cat.mood = "happy" : nil}
  end

  def sell_pets
    Dog.all.map do |dog| 
      if dog.owner == self  
        dog.mood = "nervous" 
        dog.owner = nil 
      end
    end

    Cat.all.map do |cat| 
      if cat.owner == self  
        cat.mood = "nervous" 
        cat.owner = nil
      end
    end
  end

  def list_pets
    "I have #{dogs().length} dog(s), and #{cats().length} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
end

# Owner
#   Instance methods
#     #name
#       can have a name
#       cannot change owner's name
#     #species
#       initializes with species set to human
#       can't change its species
#     #say_species
#       can say its species
#   Class methods
#     .all returns all instances of Owner that have been created
#     .count returns the number of owners that have been created
#     .reset_all can reset the owners that have been created