require 'rails_helper'

RSpec.describe MerchantFacade do
    describe 'class methods' do
        describe '#all_merchants' do
            it 'returns all merchants' do
                merchants = MerchantFacade.all_merchants

                expect(merchants.count).to eq(100)
                expect(merchants).to be_all(Merchant)
            end
        end

        describe '#merchant_items(merchant_id)' do
            it 'returns all items that belong to a merchant' do
                merchant = MerchantFacade.all_merchants.first
                items = MerchantFacade.merchant_items(merchant.id)
                expect(items.count).to eq(15)
                expect(items).to be_all(Item)
            end
        end
    end
end