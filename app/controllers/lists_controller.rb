class ListsController < ApplicationController
  def index
  @list = List.all
  end

  def show
  end

  def create
  end

  def new
  end

  private

  def set_restaurant
    @list = List.find(params[:id])
  end
end
