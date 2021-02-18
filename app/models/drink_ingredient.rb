class DrinkIngredient < ApplicationRecord
    belongs_to :drinks
    belongs_to :ingredients
end
