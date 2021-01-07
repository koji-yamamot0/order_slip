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
    @menu = Menu.all
  end

  def order_params
    params.require(:order).permit(:sum, :quantity)
  end
end
