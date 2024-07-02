class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(score: 0, best_game: 0)
    @game.user = current_user
    @game.save
    @count = 1
    if current_user.total_games.nil?
      current_user.total_games = 1
    else
      current_user.total_games += 1
    end
    current_user.save
    redirect_to root_path
  end
end
