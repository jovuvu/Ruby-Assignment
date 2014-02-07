class WrongNumberOfPlayersError < StandardError ; end

class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  if game.size != 2
    raise WrongNumberOfPlayersError
  end
  
  moves = game[0][1].downcase + game[1][1].downcase
  if (moves =~ /^[PSR]?[PSR]?$/i).nil?
    raise NoSuchStrategyError
  end
  
  case moves
  when "pp", "ss", "rr", "pr", "rs", "sp"
    return game[0]
  else
    return game[1]
  end

end

def rps_tournament_winner(bracket)
  
end
print rps_game_winner([["paper", "P"], ["scissors", "S"]])