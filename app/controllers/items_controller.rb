class ItemsController < ApplicationController
    def index
        @items = ItemFacade.all_items
    end

    def show
        @item = ItemFacade.item_by_id(params[:id])
    end
end