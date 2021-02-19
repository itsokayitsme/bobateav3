class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end

    def new
        @orders = Order.new
    end

    def create
        @orders = Order.new(order_params)
        if @orders.save
            redirect_to @orders.user
        else
            render :new
        end
    end

    def destroy
        @orders = Order.find(params[:id])
        @orders.destroy
        redirect_to @orders.user
    end

    private

    def order_params
        params.require(:orders).permit(:user_id)
    end
end


