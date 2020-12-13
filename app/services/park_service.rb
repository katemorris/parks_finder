class ParkService
  def self.state_parks(state)
    parse_data(state)
  end

  private

  def self.connection
    Faraday.new('https://developer.nps.gov') do |f|
      f.params['api_key'] = ENV['NPS_KEY']
    end
  end

  def self.state_search(state)
    connection.get("/api/v1/parks?stateCode=#{state}")
  end

  def self.parse_data(state)
    json_body = JSON.parse(state_search(state).body, symbolize_names: true)
  end

end
