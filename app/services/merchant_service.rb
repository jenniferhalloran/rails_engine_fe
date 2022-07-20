class MerchantService
    def self.all_merchants
        response = BaseService.connection.get("/api/v1/merchants")
        BaseService.get_json(response)
    end

    def self.merchant_items(merchant_id)
        response = BaseService.connection.get("/api/v1/merchants/#{merchant_id}/items")
        BaseService.get_json(response)
    end
end