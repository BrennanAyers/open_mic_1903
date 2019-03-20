class OpenMic
  attr_reader :location, :date

  def initialize(hash)
    @location = hash[:location]
    @date = hash[:date]
  end


end
