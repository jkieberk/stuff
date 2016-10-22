class ListController < ApplicationController
  def todos
    #RUBY CODE
    def create_item
      item = Item.new
      item.name = params[:name]
    end
  end
end
