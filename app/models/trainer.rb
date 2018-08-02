# 1. Create the class
class Trainer
  # 4. Define macros
  attr_reader :name
  # 2. Create class variable(s)
  @@all = []
  # 3. Define initialize method
  def initialize name
    @name = name
    @@all << self
  end
  # 5. Define custom methods
  # All
  def self.all
    @@all
  end
  # Pokeballs
  def pokeballs
    Pokeball.all.select {|pokeball| pokeball.trainer == self}
  end
  # Pokemon
  def pokemon
    pokeballs.map { |pokeball| pokeball.pokemon }
  end
end
