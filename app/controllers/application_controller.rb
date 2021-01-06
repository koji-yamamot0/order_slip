class ApplicationController < ActionController::Base
  private
  def current_cart
    if Cart.find_by(id: session[:cart_id])
      current_cart = Cart.find_by(id: session[:cart_id])
    else
      current_cart = Cart.create(customer_id: current_customer.id)
    end
    session[:cart_id] = current_cart.id
    current_cart
  end
end