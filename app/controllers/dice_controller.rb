
class DiceController < ApplicationController
 def show
     render ({ :template => "game_templates/head" })
 end
 
 def roll
     @num_dice = params.fetch("param_one").to_i
     @num_sides = params.fetch("param_two").to_i

     @rolls = []
     @num_dice.times do
        die = rand(1..@num_sides)
        @rolls.push(die)
     end

     render ({ :template => "game_templates/roll" })
 end 
end
