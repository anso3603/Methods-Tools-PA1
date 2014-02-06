def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
	p1strategy = game[0][1].downcase
	p2strategy = game[1][1].downcase
	raise NoSuchStrategyError unless p1strategy == "r" || p1strategy == "p" || p1strategy == "s"
	raise NoSuchStrategyError unless p2strategy == "r" || p2strategy == "p" || p2strategy == "s"
	if p1strategy == "p" and p2strategy == "s"
		puts game[1]
		return game[1]
	elsif p1strategy == "p" and p2strategy == "r"
		puts game[0]
		return game[0]
	elsif p1strategy == "r" and p2strategy == "p"
		puts game[1]
		return game[1]
	elsif p1strategy == "r" and p2strategy == "s"
		puts game[0]
		return game[0]
	elsif p1strategy == "s" and p2strategy == "p"
		puts game
		return game[0]
	elsif p1strategy == "s" and p2strategy == "r"
		return game[1]
	elsif p1strategy == p2strategy
		return tie
	end
end	

def contains_game(game)
	return game[0][0].is_a?(String)
end

def rps_tournament_winner(tournament)
	if contains_game(tournament)
		return rps_game_winner(tournament)
	end
	rps_game_winner [ rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]
end
	


test1 = [ ["Armando", "P"], ["Dave", "S"] ]

rps_game_winner(test1)

tournament_list =
[

    [

        [ ["Armando", "P"], ["Dave", "S"] ],

        [ ["Richard", "R"],  ["Michael", "S"] ],

    ],

    [

        [ ["Allen", "S"], ["Omer", "P"] ],

        [ ["David E.", "R"], ["Richard X.", "P"] ]

    ]

]
puts tournament_list.to_s + "=" + rps_tournament_winner(tournament_list).to_s

gets
