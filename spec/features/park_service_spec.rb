require 'rails_helper'

RSpec.describe ParkService, type: :model do
  describe 'class methods' do
    it '.state_parks()' do
      state = 'TN'
      results = ParkService.state_parks(state)
      expect(results).to be_a Hash
      expect(results[:data].count).to eq(16)
      expect(results[:data].first[:fullName]).to be_a String
    end
  end
end
