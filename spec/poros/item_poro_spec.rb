require 'rails_helper'

RSpec.describe Item do
    it "exists" do
        item_data = {:id=>"4",
                     :type=>"item",
                     :attributes=>
                    {:name=>"Item Nemo Facere",
                     :description=>"Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
                     :unit_price=>42.91,
                     :merchant_id=>1}}
        item = Item.new(item_data)

        expect(item).to be_an Item
        expect(item.name).to eq("Nemo Facere")
        expect(item.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
        expect(item.unit_price).to eq(42.91)
        expect(item.merchant_id).to eq(1)
    end    
end