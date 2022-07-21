require 'rails_helper'

RSpec.describe ItemService do
    describe 'class methods' do
        describe '#all_items' do
            it 'returns all items' do
                items = ItemService.all_items
                
                expect(items[:data]).to be_an(Array)
                expect(items[:data].count).to eq(2483)

                first_item = items[:data].first 
               
                expect(first_item[:id]).to eq("4")
                expect(first_item[:attributes][:description]).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
                expect(first_item[:attributes][:unit_price]).to eq(42.91)
                expect(first_item[:attributes][:merchant_id]).to eq(1)
            end
        end
        describe '#item_by_id(id)' do
            it 'returns a specific item based on id' do
                item = ItemService.item_by_id("4")[:data]
            
                expect(item).to be_a(Hash)
                expect(item[:id]).to eq("4")
                expect(item[:attributes][:name]).to eq("Item Nemo Facere")
                expect(item[:attributes][:description]).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
                expect(item[:attributes][:unit_price]).to eq(42.91)
                expect(item[:attributes][:merchant_id]).to eq(1)
            end
        end
    end
end