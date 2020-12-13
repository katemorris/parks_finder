class ParksFacade
  def self.search_state(state)
    results = ParkService.state_parks(state)
    results[:data].map do |park|
      Park.new(park)
    end
  end
end
