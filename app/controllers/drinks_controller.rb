class DrinksController < ApplicationController
    before_action :set_drinks, only: [:show, :destroy, :edit, :update]
    before_action :set_users, only: [:new, :create, :edit, :update]
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
        @drinks = Drink.new
    end

    def create
        @drinks = Drink.new(drinks_params)
        if @drinks.save
            redirect_to @drinks
        else
            render :new
        end
    end

    def edit

    end

    def update
        if @drinks.update(drinks_params)
            redirect_to @drinks
        else
            render :edit
        end
    end

   
    def destroy
        @drinks.destroy
        redirect_to drinks_path
    end
    #         @drinks = Drink.find(params[:id])
    #         if @drinks.present?
    #           @drinks.destroy
    #         end
    #         redirect_to @drinks
    # end
    

    private

    def drinks_params
        params.require(:drink).permit(:name, :sugar_amt, :ice_amt, :boba, :jelly, :small, :large)
    end

    def set_drinks
        @drinks = Drink.find(params[:id])
    end

    def set_users
        @users = User.all
    end

end


