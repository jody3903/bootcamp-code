#exercise 3
module HasRatings #Use module HasRatings 

    def add_rating(score)
        @rating = [] if !@rating
        @rating << score
    end

    #solution from class
    # def add_rating(rating)
    #     @ratings = [] if @ratings.nil?
    #     @ratings << rating
    # end


    def average_rating #method average rating to return avg rating
        if @rating.length > 0
            @average_score = @rating.sum / @rating.length.to_f #from class to_f adds decimial to avoid rounding issues
            puts "#{@name} has a rating of #{@average_score}"
        else
            @average_score = 0
            puts "#{@name} does not have any ratings"
        end
    end
end

#Exercise 1

class Business #Implement a class to store information
    include HasRatings 
    attr_reader :name 
    attr_reader :location #Ability to get name and location back out
    attr_accessor :rating,:score

    def initialize(name, location) #Initializer should take in the name and location
        @name = name
        @location = location
        @rating = Array.new
        @score = score
    end

    def has_food? #Define a method has_food that returns false
       puts "false"
    end
end

#Exercise 2
class Restaurant < Business #implement a subclass
    
    def has_food? #implement has_food? to return true
        puts "true"
    end
end


business1 = Business.new("McDonalds", "NYC")
business1.has_food?
business1.add_rating(5)
business1.add_rating(4)
business1.add_rating(3)

business1.average_rating


#full solution from class
# module HasRatings
#     def add_rating(rating)
#         @ratings = [] if @ratings.nil?
#         @ratings << rating
#     end
#     def average_rating # Number
#         @ratings.sum / @ratings.length.to_f
#     end
# end
# class Business
#     include HasRatings
#     attr_reader :name, :location
#     def initialize(name, location)
#         @name = name
#         @location = location
#     end
#     def has_food?
#         false
#     end
# end
# class Restaurant < Business
#     def has_food?
#         true
#     end
# end
# johns = Business.new(“John’s Place”, “New Jersey”)
# puts johns.name
# puts johns.location
# als = Restaurant.new(“Al’s Pizzeria”, “New York”)
# puts johns.has_food?
# puts als.has_food?
# als.add_rating(5)
# als.add_rating(2)
# puts “als rating is #{als.average_rating} (should be 3.5)”
# johns.add_rating(4)
# puts “johns rating is #{johns.average_rating} (should be 4)”





