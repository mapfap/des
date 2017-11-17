class MenuController < ApplicationController
  def index
    @items = MenuItem.all
    respond_to do |format|
      format.html
      format.json { render json: @items.to_json(only: [:name, :price])  }
    end
  end
end
