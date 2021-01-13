class MenusController < ApplicationController

  before_action :find_menu, only: [:show]
  before_action :set_customer, only: [:index, :show]

  def index
    @menus = Menu.order("created_at DESC")
  end

  def new
    @menu = Menu.new
  end
  
  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def confirmation
    @orders = Order.order("created_at DESC")
    @customer = Customer.all
  end

  def provide
    @cart_menu = CartMenu.find(params[:cart_menu_id])
    if @cart_menu.update(check: params[:check])
      redirect_to confirmation_path
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :text, :price, :category_id, :image).merge(staff_id: current_staff.id)
  end

  def find_menu
    @menu = Menu.find(params[:id])
  end

  def set_customer
    @customer = current_customer
  end

end