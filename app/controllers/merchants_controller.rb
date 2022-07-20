class MerchantsController < ApplicationController
    def index
        @merchants = MerchantFacade.all_merchants
    end

    def show
        merchants = MerchantFacade.all_merchants
        @merchant = merchants.select {|merchant| merchant.id == params[:id]}.first
        @items = MerchantFacade.merchant_items(params[:id])
    end
end