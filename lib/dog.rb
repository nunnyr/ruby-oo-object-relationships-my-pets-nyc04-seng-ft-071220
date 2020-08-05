class Dog
  # code goes here

  @@all = []

  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(dog_name_param, owner_name_param)  
    @name = dog_name_param
    @owner = owner_name_param
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end





end