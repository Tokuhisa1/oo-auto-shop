# 1. Create the class
class Pokeball
  # 4. Define macros
  attr_reader :type, :trainer, :pokemon
  # 2. Create class variable(s)
  @@all = []
  # 3. Define initialize method
  def initialize type, trainer, pokemon
    @type = type
    @trainer = trainer
    @pokemon = pokemon
    @@all << self
  end
  # 5. Define custom methods
  # All
  def self.all
    @@all
  end
end
