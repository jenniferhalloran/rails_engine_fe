require 'rails_helper'

RSpec.describe "Items Show" do
    it "displays an items name, description, and price" do
        item = ItemFacade.all_items.first
        visit ("/items/#{item.id}")

        expect(page).to have_content(item.name)
        expect(page).to have_content(item.description)
        expect(page).to have_content(item.unit_price)
    end    
end