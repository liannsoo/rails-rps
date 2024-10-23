class GameController < ApplicationController
  MOVES = ['rock', 'paper', 'scissors']

  def new
  end

  def rock
    play_game('rock')
  end

  def paper
    play_game('paper')
  end

  def scissors
    play_game('scissors')
  end

  private

  def play_game(player_move)
    @player_move = player_move
    @computer_move = MOVES.sample
    @result = get_result(@player_move, @computer_move)
    render 'result'
  end

  def get_result(player, computer)
    if player == computer
      "We tied!"
    elsif (player == 'rock' && computer == 'scissors') ||
          (player == 'paper' && computer == 'rock') ||
          (player == 'scissors' && computer == 'paper')
      "We won!"
    else
      "We lost!"
    end
  end
end
