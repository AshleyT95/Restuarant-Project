require 'pry'

class Restaurant

attr_accessor :name, :star_rating

def initialize (name, star_rating)
    @name = name
    @star_rating = star_rating
end

end

binding.pry


restaurant1= Restaurant.new("Maiella", 5 )
