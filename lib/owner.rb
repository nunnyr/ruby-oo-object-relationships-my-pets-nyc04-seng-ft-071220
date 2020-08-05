
require 'pry'

class Owner
  
#eventually we'll create an @@ - class variable 
@@all = []

#"Hi Nunny!" ""
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




end

# Owner.new("Coco","Eric")
#binding.pry 

#0