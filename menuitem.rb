#Build a MenuItem class
#A Restaurant has many Recipes through MenuItem
#A Recipe has many Restaurants through MenuItem
#Restaurant#recipes returns all the Recipes that belong to the Restaurant
#Recipe#restaurants return all the Restaurants that belong to the Recipe

class MenuItem
#So our joint model is menuitem, thus initialize should have restaurant and recipes

@@all=[]

def initialize(restaurant, recipe)
    @restaurant = restaurant
    @recipe = recipe
MenuItem.all << self

end

def self.all
    @@all
end


#I am stuck here. I am not sure how to move on from here.




end