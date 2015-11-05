class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end
  
  def self.winner(player1, player2)
    # YOUR CODE HERE
    status = [player1[1], player2[1]].sort!.join.upcase 
    case status
    when 'RS'
    	player1[1]=='R' ? player1 : player2 
    when 'PS'
    	player1[1]=='S' ? player1 : player2 
    when 'PR'
    	player1[1]=='P' ? player1 : player2 
    when 'SS'
    	player1
    when 'PP'
    	player1
    when 'RR'
    	player1
    else 
        raise RockPaperScissors::NoSuchStrategyError, "Strategy must be one of R,P,S"
    end

  end

  def self.tournament_winner(tournament)
    
  end

end
