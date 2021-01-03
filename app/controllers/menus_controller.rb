class MenusController < ApplicationController

  def index
    @menus = Menu.order("created_at DESC")
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

  def menu_find
    @menu = Menu.find(params[:id])
  end

end
