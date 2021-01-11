class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save()
  end

  def save
    @@all << self 
  end

  def self.all
    @@all
  end
end

# Dog
#   Instance methods
#     initializes with a name and an Owner
#     can change its owner
#     can't change its name
#     initializes with a nervous mood
#     can change its mood
#   Class methods
#     knows all the dogs

# Associations
#   Owner instance methods
#     #cats
#       returnsa a collection of all the cats that belong to the owner
#     #dogs
#       returnsa a collection of all the dogs that belong to the owner
#     #buy_cat
#       can buy a cat that is an instance of the Cat class
#       knows about its cats
#     #buy_dog
#       can buy a dog that is an instance of the Dog class
#       knows about its dogs
#     #walk_dogs
#       walks the dogs which makes the dogs' moods happy
#     #feed_cats
#       feeds cats which makes the cats' moods happy
#     #sell_pets
#       can sell all its pets, which makes them nervous
#       can sell all its pets, which leaves them without an owner
#     #list_pets
#       can list off its pets