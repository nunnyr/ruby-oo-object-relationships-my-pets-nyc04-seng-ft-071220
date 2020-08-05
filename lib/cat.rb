class Cat
  # code goes here
  
  
  @@all = []


  attr_reader :name
  #attr_writer :mood, :owner 
  attr_accessor :owner, :mood

  def initialize(cat_name_param, owner_name_param)
    @name = cat_name_param
    @owner = owner_name_param
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end


end