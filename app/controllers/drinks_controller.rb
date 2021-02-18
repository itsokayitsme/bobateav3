class DrinksController < ApplicationController
    def index
        # if signed_in?
        #     @drinks = Drink.all.select do |drink|
        #     drink.user_id == session[:user_id]
        #     end
        # else
        #     redirect_to signin_path
        # end
        if params[:sort]
            @drinks = Drink.all.sort_by {|r| r.ingredients.count}.reverse
        elsif params[:query]
            @drinks = Drink.where('name LIKE ?', "%#{params[:query]}%")
            render :index
        else
            @drinks = Drink.all
        end
    end

    def show

    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

end

