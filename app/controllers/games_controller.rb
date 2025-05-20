class GamesController < ApplicationController

  def score
    @word = params[:word]
    dictionary = URI("https://dictionary.lewagon.com/#{@word}")
    @dictionaryAPI = Net::HTTP.get(dictionary)
    @response = JSON.parse(@dictionaryAPI)
       @response["found"]
  end

  def new
    @letters = ('a'..'z').to_a
    @random_letters = @letters.sample(10)
  end

end
