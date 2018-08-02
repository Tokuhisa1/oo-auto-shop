require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Put your variables here~!
# Trainers
red = Trainer.new('Red')
blue = Trainer.new('Blue')
# Pokemon
mewtwo = Pokemon.new('Mewtwo')
articuno = Pokemon.new('Articuno')
gyarados = Pokemon.new('Gyarados')
# Pokeballs
master = Pokeball.new('master', red, mewtwo)
great = Pokeball.new('great', blue, gyarados)
ultra = Pokeball.new('ultra', red, articuno)

binding.pry
