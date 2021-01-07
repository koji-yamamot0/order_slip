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