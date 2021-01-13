class OrdersController < ApplicationController
  before_action :set_menu, :set_customer

  def index
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.valid?
      @order.save
    else
      @order = Order.find_by(customer_id: params[:order][:customer_id])
      @order.update(order_params)
    end
  end
  
  private
  
  def set_menu
    @menus = current_customer.cart.menus
  end

  def set_customer
    @customer = current_customer
  end

  def order_params
    params.require(:order).permit(:sum, :quantity).merge(customer_id: @customer.id)
  end
end
