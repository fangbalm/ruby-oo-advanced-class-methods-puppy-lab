require 'pry'

class Dog 
    @@all = []
    attr_accessor :name 

    def initialize(name)
        @name = name
        save
    end

    def self.all # this class method allows us to call "all_dogs"
        @@all
    end

    def self.clear_all 
        @@all.clear
    end

    def self.print_all
        @@all.map do |dog| #all refers to the array that holds each instance of the dog class. dog refers to the specific instance, therefore we are telling that instance to puts its name. 
            puts dog.name
        end
    end

    def save 
        @@all << self
    end

end
