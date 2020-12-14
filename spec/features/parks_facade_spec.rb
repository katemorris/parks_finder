require 'rails_helper'

RSpec.describe ParksFacade, type: :model do
  describe 'class methods' do
    it '.search_state' do
      VCR.use_cassette('tenn_parks') do
        state = 'TN'
        results = ParksFacade.search_state(state)
        expect(results).to be_an Array
        expect(results.count).to eq(16)
        expect(results.first).to be_a Park
      end
    end
  end
end
