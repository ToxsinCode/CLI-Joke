class CLI
  def start
    puts ""
    puts "Welcome, I'll tell you a joke"
    puts ""
    puts "What kind of joke would you like to hear?"
    puts ""
    puts "General             or                Programming"
    puts ""
    puts "Enter your Category"
    puts ""
    @category = gets.strip.downcase
    puts ""
    API.fetch_jokes(@category)
    puts ""
    setup = Joke.setup
    punch = Joke.punch
    print setup
    puts ""
    puts ""
    puts ""
    puts "Enter your guess. If you dont have one, just enter anything"
    guess = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '')
    if guess == punch.downcase.gsub(/[^a-z0-9\s]/i, '')
      puts "Awww no fair! you already know this one! D:       "
    else
      puts punch
    end
    puts ""
    puts ""
    if
  end
end
