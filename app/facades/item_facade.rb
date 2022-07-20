class ItemFacade
    def self.all_items
        items = ItemService.all_items
        items[:data].map do |item|
            Item.new(item)
        end
    end

    def self.item_by_id(id)
        item = ItemService.item_by_id(id)
        Item.new(item[:data])
    end
end