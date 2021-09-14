class Player
    attr_reader :name    # the player chooses their name.
    attr_reader :health  # when this is 0, we lose.
    attr_reader :gold    # this is equivalent to points.
    attr_reader :stamina # this results in not being able to perform actions. 

    def initialize()
        print "Enter your player's name: "
        @name = gets.strip # make our player strip. Ooh lala.
        @health = 100
        @gold = 0
        @stamina = 100
    end

    def print_yourself()
        puts "#{@name} has #{@health} health."
        puts "#{@name} has #{@stamina} stamina."
        puts "#{@name} has #{@gold} gold."
    end
end

class Encounter
    attr_reader :art  # Our sweet sweet ascii art.
    attr_reader :name # The name of the encounter, duh!
    attr_reader :options # The options, the player chooses!
    attr_reader :consequence # The consequence of the players choice of options.
    attr_reader :encounter_intro # Intro for the encounter!

    def initialize()
        @name = "Friendly Looking Traveller"
        @encounter_intro = "The #{@name} offers to share their baked cherry pie with you! 
        They seem to look genuine and happy."
        @art = ""\
        "   .------\\ /------.\n"\
        "   |       -       |\n"\
        "   |               |\n"\
        "   |               |\n"\
        "   |               |\n"\
        "_______________________\n"\
        "===========.===========\n"\
        "  / ~~~~~     ~~~~~ \\\n"\
        " /|     |     |\\\n"\
        " W   ---  / \\---   W\n"\
        " \\.      |o o|      ./\n"\
        "  |                 |\n"\
        "  \\    #########    /\n"\
        "   \\  ## ----- ##  /\n"\
        "    \\##         ##/\n"\
        "     \\_____v_____/\n"
    end

    # The player enters the encounter, lets start!
    def start_encounter(player)
        puts "#{player.name} encounters a #{@name}."
        puts @art
    end

end

player = Player.new
player.print_yourself()
encounter = Encounter.new
encounter.start_encounter(player)







