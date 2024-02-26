Rails.application.routes.draw do
get("/",{controller:"dices",action:"homepage"})
get("/dice/2/6",{controller:"dices",action:"dice_2_6"})
get("/dice/2/10",{controller:"dices",action:"dice_2_10"})
get("/dice/1/20",{controller:"dices",action:"dice_1_20"})
get("/dice/5/4",{controller:"dices",action:"dice_5_4"})
get("/dice/:number_of_dice/:how_many_sides",{controller:"dices",action:"random_dice_random_side"})
end
