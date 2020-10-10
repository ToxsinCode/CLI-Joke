class Joke
  attr_accessor :joke_setup, :joke_punch

  def initialize (joke_setup:, joke_punch:)
    @@setup = joke_setup
    @@punch = joke_punch
  end
  def self.setup
    @@setup
  end
  def self.punch
    @@punch
  end
end
