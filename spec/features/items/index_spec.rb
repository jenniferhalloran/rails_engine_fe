require 'rails_helper'

RSpec.describe "Items Index" do
    it "displays all items by name" do
        visit '/items'
        items = ItemFacade.all_items
        expect(page).to have_content("All Items")
        expect(page).to have_content(items.first.name)
        expect(page).to have_content(items.second.name)
        expect(page).to have_content(items.last.name)
    end

    it "links to each items's show page" do
        visit '/items'
        items = ItemFacade.all_items
        item = items.first

        click_link(item.name)
        expect(current_path).to eq("/items/#{item.id}")
    end
    
    
end