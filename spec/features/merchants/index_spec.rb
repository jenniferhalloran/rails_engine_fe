require 'rails_helper'

RSpec.describe "Merchants Index" do
    it "displays all merchants by name" do
        merchant1 = MerchantFacade.all_merchants.first
        merchant2 = MerchantFacade.all_merchants.last
        visit '/merchants'

        expect(page).to have_content("Merchants")
        expect(page).to have_link(merchant1.name)
        expect(page).to have_link(merchant2.name)
    end

    it "links to each merchant's show page" do
        merchant = MerchantFacade.all_merchants.first
        visit '/merchants'
        click_link(merchant.name)
        expect(current_path).to eq("/merchants/#{merchant.id}")
    end
    
    
end