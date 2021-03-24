class CarsController < ApplicationController
    def index #from class
        cars = Car.all 
        render_cars(cars)
    end

    def create
        make = params["car"]["make"]
        model = params["car"]["model"]

        Car.create(make: make, model: model)

        render plain: "created!"
    
    end

    def index_for_make
        make = params[:make]
        cars = Car.where(make: make)
        list = cars.map { |car| car.make_and_model }
        sentence = list.join(", ")
        render plain: sentence #can add additional text here if wanted
    end

    private

    def render_cars(cars)
        list = cars.map { |car| car.make_and_model }
        sentence = list.join(", ")
        render plain: sentence
    end
end
