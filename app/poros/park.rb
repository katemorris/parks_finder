class Park
  attr_reader :name, :description, :directions_url, :hours, :code
  def initialize(data)
    @name = data[:fullName]
    @code = data[:parkCode]
    @description = data[:description]
    @directions_url = data[:directionsUrl]
    @hours = format_hours(data[:operatingHours].first[:standardHours])
  end

  def format_hours(data)
    real = {}
    data.each do |day, hours|
      real[day.capitalize] = hours
    end
    real
  end
end
