require_relative "Encounter" # Paste Encounter.rb here.
require_relative "Player" # Paste Player.rb here.

player = Player.new
encounter = Encounter.new

while true
    system("clear")
    player.print_yourself()
    encounter.perform(player) # The player encounters the encounter.
    player.print_yourself()
    
    if player.health == 0
        break
    else
        puts "Press enter button to start the next encounter..."
        gets
    end
end

puts "GAME OVER"