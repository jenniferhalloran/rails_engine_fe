require 'rails_helper'

RSpec.describe ItemFacade do
    describe 'class methods' do
        describe '#all_items' do
            it 'all items' do
                items = ItemFacade.all_items
                expect(items.count).to eq(2483)
                expect(items).to be_all(Item)
            end
        end
        describe '#item_by_id(id)' do
            it 'returns a corresponding item by id' do
                item = ItemFacade.item_by_id("4")

                expect(item).to be_an(Item)
            end
        end
    end
end