class Car < ApplicationRecord
    def make_and_model
        "#{model} by #{make}"
    end
end
