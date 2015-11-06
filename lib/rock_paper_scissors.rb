class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end
  
  def self.winner(player1, player2)
    status = [player1[1], player2[1]].sort!.join.upcase 
    myWinner(status, player1, player2)    
  end

  def self.tournament_winner(tournament)
    return self.winner(tournament[0], tournament[1]) if tournament.flatten.size==4
    self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
  end

  private_class_method  

  	def self.myWinner(status, player1, player2)
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

end
