class API
  def self.fetch_jokes(category)
    url = "https://official-joke-api.appspot.com/jokes/#{category}/random"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    jokes = JSON.parse(response)
    jokes.each do |d|
      Joke.new(joke_setup: d["setup"], joke_punch: d["punchline"])
    end
  end
end
