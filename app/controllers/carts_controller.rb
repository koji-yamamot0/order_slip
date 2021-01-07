class CartsController < ApplicationController
  before_action :set_customer
  before_action :set_cart
  before_action :set_cart_menu, only: [:add_menu]

  def show
    @cart_menus = @cart.cart_menus
  end

  def add_menu
    @cart_menu = @cart.cart_menus.build(menu_id: params[:id])
    if @cart_menu.save
      redirect_to cart_path(@customer)
    else
      redirect_to controller: "menus", action: "show"
    end
  end
  
  private

  def set_customer
    @customer = current_customer
  end

  def set_cart
    @cart = current_cart
  end

  def set_cart_menu
    @cart_menu = current_cart.cart_menus.build(menu_id: params[:menu_id])
  end
end
