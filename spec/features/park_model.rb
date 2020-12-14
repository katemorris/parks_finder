require 'rails_helper'

RSpec.describe Park, type: :model do
  let(:park) do
    Park.new(
      :id=>"2ED6E071-57AA-4B08-8DDA-5CB09FBB75C8",
      :fullName=>"Andrew Johnson National Historic Site",
      :parkCode=>"anjo",
      :description=>
      "Andrew Johnson's complex presidency (1865-69) illustrates the Constitution at work following the Civil War. As the President and Congress disagreed on Reconstruction methods, the Constitution served as their guide on balance of powers, vetoes, and impeachment. In the end, it evolved as a living document with pivotal amendments on freedom, citizenship, and voting rights - topics still vital today.",
      :directionsUrl=>"http://www.nps.gov/anjo/planyourvisit/directions.htm",
      :operatingHours=>
        [{:exceptions=>
          [{:exceptionHours=>{}, :startDate=>"2020-01-01", :name=>"Closed New Year's Day", :endDate=>"2020-01-01"},
            {:exceptionHours=>{}, :startDate=>"2020-11-26", :name=>"Closed for Thanksgiving", :endDate=>"2020-11-26"},
            {:exceptionHours=>{}, :startDate=>"2020-12-25", :name=>"Closed for Christmas Day", :endDate=>"2020-12-25"}],
          :description=>
          "The Andrew Johnson NHS has transitioned to winter hours. The site is currently open from 9:00 a.m. until 4:00 p.m. Tuesday-Saturday. Due to the limited space inside the president's Homestead, a self-guided tour has been implemented. The Homestead is open Tuesday-Saturday from 9:30-11:30 am and again from 1:30-3:30 pm.",
        :standardHours=>
          {:wednesday=>"9:00AM - 4:00PM",
            :monday=>"Closed",
            :thursday=>"9:00AM - 4:00PM",
            :sunday=>"Closed",
            :tuesday=>"9:00AM - 4:00PM",
            :friday=>"9:00AM - 4:00PM",
            :saturday=>"9:00AM - 4:00PM"},
        :name=>"Andrew Johnson National Historic Site"}]
    )
  end
  
  describe 'attribute accessors' do
    it 'has attributes' do
      description = "Andrew Johnson's complex presidency (1865-69) illustrates the Constitution at work following the Civil War. As the President and Congress disagreed on Reconstruction methods, the Constitution served as their guide on balance of powers, vetoes, and impeachment. In the end, it evolved as a living document with pivotal amendments on freedom, citizenship, and voting rights - topics still vital today."

      expect(park.name).to eq("Andrew Johnson National Historic Site")
      expect(park.description).to eq(description)
      expect(park.code).to eq("anjo")
      expect(park.directions_url).to eq("http://www.nps.gov/anjo/planyourvisit/directions.htm")
    end
  end

  describe 'instance method' do
    it '.format_hours' do
      hours = {
        :wednesday=>"9:00AM - 4:00PM",
        :monday=>"Closed",
        :thursday=>"9:00AM - 4:00PM",
        :sunday=>"Closed",
        :tuesday=>"9:00AM - 4:00PM",
        :friday=>"9:00AM - 4:00PM",
        :saturday=>"9:00AM - 4:00PM"
      }

      expect(park.format_hours(hours)).to eq(park.hours)
    end
  end
end
