#Build a RestaurantOwner Class-->done
#a RestaurantOwner has a name-->done
#a RestaurantOwner has an age-->done
#A RestaurantOwner has many Restaurants
#A Restaurant belongs to a RestaurantOwner 
#Restaurant#owner returns the RestaurantOwner that the restaurant belongs to
#RestaurantOwner.all returns all of the RestaurantOwners-->done
#RestaurantOwner.average_age returns the average age of all the RestaurantOwners-->done

require 'pry'


class RestaurantOwner

    attr_accessor :name, :age
    @@all=[]

    def initialize (name, age)
        @name = name
        @age = age
        RestaurantOwner.all << self
    end

    def age
        @age
    end


    def self.all
        @@all
    end
   
    restuarantowner1 = RestaurantOwner.new("Harry Potter", 35)
    restuarantowner2 = RestaurantOwner.new("Lionel Messi", 38)
    
    def self.get_ages
        ages= []
        #We have to iterate over The list of all restaurant owners. 
        for ro in @@all do 
            ages << ro.age
        end

        return ages
    end

    def self.average_age
      #Takes sum of the ages and divide by size. 
       return (self.get_ages().sum / self.get_ages().size).to_f
    end
       
    
    
    #binding.pry
    def self.my_restuarant(restuarant_number)
        restuarant_number.restuarantowner = self
    end

    #def my_restaurant(name, star_rating)
   #     my_restuarant= Restaurant.new(name, description, self) 
   # end
#end


    def restaurants
        Restaurant.all.select do |restuarant|
        restaurant_number.restaurantowner == self
        end
    end
end
binding.pry
        
