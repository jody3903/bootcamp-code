class Review < ApplicationRecord
    belongs_to :restaurant

    def print_review
        "this is a review about #{resturant.name}: #{comment}"
    end
