class UsersController < ApplicationController
    before_action :set_user, only: [:show]

    def new
        @user = User.new
    end

    def show
        if !set_user
            redirect_to drinks_path
        end
    end

    private

    def set_user
        @user = User.find(params[:id])
    end
end

