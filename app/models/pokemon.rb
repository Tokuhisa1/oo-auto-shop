# 1. Create the class
class Pokemon
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
    Pokeball.all.select {|pokeball| pokeball.pokemon == self}
  end
  # Trainer
  def trainer
    pokeballs.map { |pokeball| pokeball.trainer }
  end
end
