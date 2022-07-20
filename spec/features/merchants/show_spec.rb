require 'rails_helper'

RSpec.describe "Merchants Show" do
    xit "displays all items the merchant sells" do
        visit '/merchants/:id'
        expect(page).to have_content("Item 1")
        expect(page).to have_content("Item 2")
        expect(page).to_not have_content("Item 3")
    end

    xit "links to each merchant's show page" do
        visit '/merchants'
        click_link("Merchant 1")
        expect(current_path).to eq('/merchants/:id')
    end
    
    
end