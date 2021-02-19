class OrdersController < ApplicationController



    def new
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)
        if @order.save
            redirect_to @order.user
        else
            render :new
        end
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to @order.user
    end

    private

    def order_params
        params.require(:order).permit(:user_id)
    end
end


