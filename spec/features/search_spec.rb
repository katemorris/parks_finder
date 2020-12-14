require 'rails_helper'

RSpec.describe 'As a user' do
  describe 'When I select a state to find parks there' do
    it 'I see total parks and a list of parks' do
      visit root_path
      VCR.use_cassette('tenn_parks') do
        select 'Tennessee'
        click_on 'Find Parks'

        expect(page).to have_content('Parks: 16')
        within('#chch') do
          expect(page).to have_content('Chickamauga & Chattanooga National Military Park')
          expect(page).to have_content('In 1863, Union and Confederate forces fought for control of Chattanooga')
          expect(page).to have_link('Directions')
          expect(page).to have_content('Sunday: Sunrise to Sunset')
        end
      end
    end
  end
end
