class ApplicationController < ActionController::Base
  private
  def current_cart
    if Cart.find_by(id: session[:cart_id])
      current_cart = Cart.find_by(id: session[:cart_id])
    else
      current_cart = Cart.create(customer_id: current_customer.id)
      @customer = current_customer
      @customer.update(cart_id: current_cart.id)
      @customer.save
    end
    session[:cart_id] = current_cart.id
    current_cart
  end
end