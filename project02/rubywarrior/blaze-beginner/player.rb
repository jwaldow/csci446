class Player
  def play_turn(warrior)
    # add your code here
	if warrior.feel.empty?
		if warrior.health < 20
			if warrior.health >= @health
				warrior.rest!
			else 
				warrior.walk!
			end
		elsif warrior.feel.captive?
			warrior.rescue!
		else
			warrior.walk!
		end
	else
		warrior.attack!
	end
	@health = warrior.health
  end
end
