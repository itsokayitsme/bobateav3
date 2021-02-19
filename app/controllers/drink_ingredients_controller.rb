class DrinkIngredientsController < ApplicationController


    def new
        @drink_ingredient = DrinkIngredient.new
        @drinks = Drink.all 
        @ingredients = Ingredient.all
    end

    def create 
        @drink_ingredient = DrinkIngredient.new(d_params)
        if @drink_ingredient.save
            redirect_to @drink_ingredient.drink
        else
            render :new
        end
    end

    private

    def d_params
        params.require(:drink_ingredient).permit(:amount, :drink_id, :ingredient_id)
    end
end

