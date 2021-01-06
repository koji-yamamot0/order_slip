class MenusController < ApplicationController

  before_action :find_menu, only: [:show]

  def index
    @menus = Menu.order("created_at DESC")
    @customer = current_customer
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
    params.require(:menu).permit(:title, :text, :price, :category_id, :image)
  end

  def find_menu
    @menu = Menu.find(params[:id])
  end

end