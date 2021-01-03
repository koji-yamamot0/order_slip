class MenusController < ApplicationController

  def index
  end

  def new
    @menu = Menu.new
  end
  
  def create
    binding.pry
    @menu = Menu.new(menu_params)
    @menu.save
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :text, :price, :category_id, :image)
  end
end
