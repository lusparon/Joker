class GameController < ApplicationController

  def index
    player_pool = ["Nick Pettit", "Amit Bijlani", "Chris Michel", "Tommy Morgan", "Jason Seifer"]
    player_pool.shuffle!
    players = [player_pool[0], player_pool[1], player_pool[2], player_pool[3], "You"]
    @game = Game.new(players)
    @game.start
    scorer = GameScorer.new(@game)
    session[:the_game] = @game
    session[:the_score] = scorer
  end

  def play
    @scorer = session[:the_score]
    @game = session[:the_game]
  end



end
