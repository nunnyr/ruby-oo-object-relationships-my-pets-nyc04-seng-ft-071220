
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

            # .all.select do |cat_hash|
            # cat.owner == self
            #select is gonna do it is going to return a subarray of owners that have cats
            #

  end 

  def dogs 

    dog_owners = Dog.all.select do |dog_info|
      dog_info.owner == self
    end
  end 

  def buy_cat 
    

  end








end

# Owner.new("Coco","Eric")
#binding.pry 

#0