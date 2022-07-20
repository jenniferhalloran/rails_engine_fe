class ItemService
    def self.all_items
        response = BaseService.connection.get("/api/v1/items")
        BaseService.get_json(response)
    end

    def self.item_by_id(id)
        response = BaseService.connection.get("/api/v1/items/#{id}")
        BaseService.get_json(response)
    end
end