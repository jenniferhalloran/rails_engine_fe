require 'rails_helper'

RSpec.describe MerchantService do
    describe 'class methods' do
        describe '#all_merchants' do
            it 'returns the name of all merchants' do
                merchants = MerchantService.all_merchants

                expect(merchants[:data]).to be_an(Array)

            end
        end
    end
end