class OrdersController < ApplicationController
  before_action :set_menu, :set_customer

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

  def set_customer
    @customer = current_customer
  end

  def order_params
    params.require(:order).permit(:sum, :quantity).merge(customer_id: current_customer.id)
  end
end
