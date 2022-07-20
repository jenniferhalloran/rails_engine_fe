require 'rails_helper'

RSpec.describe "Merchants Index" do
    it "displays all merchants by name" do
        visit '/merchants'
        expect(page).to have_content("Merchant 1")
    end

    xit "links to each merchant's show page" do
        visit '/merchants'
        click_link("Merchant 1")
        expect(current_path).to eq('/merchants/:id')
    end
    
    
end