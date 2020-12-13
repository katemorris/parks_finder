require 'rails_helper'

RSpec.describe Park, type: :model do
  describe 'instance method' do
    it '.format_hours' do
      data = {
        :wednesday=>"9:00AM - 4:00PM",
        :monday=>"Closed",
        :thursday=>"9:00AM - 4:00PM",
        :sunday=>"Closed",
        :tuesday=>"9:00AM - 4:00PM",
        :friday=>"9:00AM - 4:00PM",
        :saturday=>"9:00AM - 4:00PM"
      }
      Park.new(park_data)


      expect()
    end
  end
end
