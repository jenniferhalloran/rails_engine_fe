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
    end
end