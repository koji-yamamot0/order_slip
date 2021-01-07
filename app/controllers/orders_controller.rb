class OrdersController < ApplicationController
  before_action :set_menu

  def index
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.save
  end
  
  private
  
  def set_menu
    @menus = current_customer.cart.menus
  end

  def order_params
    params.require(:order).permit(:sum, :quantity)
  end
end
