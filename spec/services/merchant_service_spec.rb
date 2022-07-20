require 'rails_helper'

RSpec.describe MerchantService do
    describe 'class methods' do
        describe '#all_merchants' do
            it 'returns the name of all merchants' do
                merchants = MerchantService.all_merchants

                expect(merchants[:data]).to be_an(Array)
                expect(merchants[:data].count).to eq(100)

                first_merchant = merchants[:data].first 
                
                expect(first_merchant[:attributes][:name]).to eq("Schroeder-Jerde")
            end
        end

        describe '#merchant_items(merchant_id)' do
            it 'returns all items that a merchant sells' do
                merchant = MerchantFacade.all_merchants.first
                items = MerchantService.merchant_items(merchant.id)
                
                expect(items[:data]).to be_an(Array)
                expect(items[:data].count).to eq(15)

                first_item = items[:data].first 
                
                expect(first_item[:id]).to eq("4")
                expect(first_item[:attributes][:description]).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
                expect(first_item[:attributes][:unit_price]).to eq(42.91)
                expect(first_item[:attributes][:merchant_id]).to eq(merchant.id.to_i)
            end
        end
    end
end