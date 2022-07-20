class MerchantFacade 
    def self.all_merchants
        merchants = MerchantService.all_merchants
        merchants[:data].map do |merchant|
            Merchant.new(merchant)
        end
    end

    def self.merchant_items(merchant_id)
        items = MerchantService.merchant_items(merchant_id)
        items[:data].map do |item|
            Item.new(item)
        end
    end
end