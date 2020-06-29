require 'pry'

class Restaurant

attr_accessor :name, :star_rating, :restaurantowner

def initialize (name, star_rating,restaurantowner)
    @name = name
    @star_rating = star_rating
    @restaurantowner = restaurantowner
end

end

binding.pry


restaurant1= Restaurant.new("Maiella", 5)
restuarant2= Restaurant.new("Shake Shack", 3)
restaurant3= Restaurant.new("Sweet Leaf", 4)