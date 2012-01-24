class Player
  def play_turn(warrior)
    # add your code here
	if warrior.feel.wall?
		warrior.pivot!
	elsif warrior.feel.empty?
		if warrior.health < 20
			if warrior.health < @health
				if warrior.health<15
					warrior.walk!(:backward)
				else
					warrior.walk!
				end
			elsif warrior.health<20
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
