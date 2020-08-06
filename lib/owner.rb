
require 'pry'


class Owner
  
#eventually we'll create an @@ - class variable 
@@all = []

attr_reader :name, :species 

  def initialize(name_param)
      @name = name_param
      @species = "human"
      @@all << self
  end

  def say_species
      "I am a #{self.species}."
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

  def cats
    cat_owners = Cat.all.select do |cat_info|
      cat_info.owner == self
    end
  end 

  # .all.select do |cat_hash|
  # cat.owner == self
  #select is gonna do it is going to return a subarray of owners that have cats
  #

  def dogs 
    dog_owners = Dog.all.select do |dog_info|
      dog_info.owner == self
    end
  end 

  def buy_cat(cat_name_param)
    Cat.new(cat_name_param, self)
  end

  def buy_dog(dog_name_param)
    Dog.new(dog_name_param, self)
  end

  def walk_dogs

    dog_array = Dog.all 
    dog_array.map do |dog_info|
      dog_info.mood = "happy"
    end
  end

  def feed_cats
    cat_array = Cat.all
    cat_array.map do |cat_info|
      cat_info.mood = "happy"
    end
  end
  
  def sell_pets
    all_pets = Dog.all + Cat.all

    change_mood = all_pets.map do |pet_info| 
      pet_info.mood = "nervous"
      pet_info.owner = nil
    end
  end
    
  def list_pets
    #self
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  #binding.pry
  end

  
end



#0