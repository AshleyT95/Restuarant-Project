require 'pry'
s
class Recipe

attr_reader :name
attr_accessor :description
@@all = []

    def initialize (name, description)
    @name = name
    @description = description
    Recipe.all << self
    end

    def name
    @name
    end

    def description
    @description
    end

    def self.all
    @@all

    end

end

recipe1 = Recipe.new("Baked Potato", "Irish")
recipe2 = Recipe.new("Fried Chicken", "American")

binding.pry