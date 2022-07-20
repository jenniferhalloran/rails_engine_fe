require 'rails_helper'

RSpec.describe "Merchants Show" do
    it "displays all items the merchant sells" do
        merchant = MerchantFacade.all_merchants.first
        visit ("/merchants/#{merchant.id}")

        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Nemo Facere")
        expect(page).to have_content("Expedita Aliquam")
        expect(page).to have_content("Provident At")
    end    
end