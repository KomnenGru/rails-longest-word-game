class GamesController < ApplicationController
  def new
    alphabet = ("a".."z").to_a
    index = alphabet.length
    @letters = []
    10.times do @letters << alphabet[rand(0...index)]
    end
    @letters = @letters.join(" ")
    @letters.upcase!
  end

  def score
    @user_input = params[:word]
  end
end
