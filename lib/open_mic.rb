class OpenMic
  attr_reader :location, :date, :performers

  def initialize(hash)
    @location = hash[:location]
    @date = hash[:date]
    @performers = []
  end

  def welcome(comic)
    @performers << comic
  end

  def repeated_jokes?
    joke_hash = {}
    @performers.each do |performer|
      joke_hash[performer.name] = performer.jokes
    end
    if joke_hash.values != joke_hash.values.uniq
      true
    else
      false
    end
  end
end
