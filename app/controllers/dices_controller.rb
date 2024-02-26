class DicesController < ApplicationController
  def homepage
    render({:template => "dices_templates/homepage"})
  end

  def dice_2_6
    @rolls = []

    2.times do 
      @die = rand(1..6)
      @rolls.push(@die)
    end

    render({:template => "dices_templates/dice_2_6"})
  end

  def dice_2_10
    @rolls = []

    2.times do 
     @die = rand(1..10)
     @rolls.push(@die)
   end
    render({:template => "dices_templates/dice_2_10"})
  end

  def dice_1_20
    @die= rand(1..20)
  
    @rolls = []
  
    @rolls.push(@die)

    render({:template => "dices_templates/dice_1_20"})
  end

  def dice_5_4
    @rolls = []

    5.times do 
      @die = rand(1..4)
      @rolls.push(@die)
    end
    render({:template => "dices_templates/dice_5_4"})
  end 

  def random_dice_random_side
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i
    @rolls = []
  
    @num_dice.times do 
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
  render({:template => "dices_templates/random_dice_random_side"})
  end  
end 
