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
        @encounter_intro = "The #{@name} offers to share their baked cherry pie with you! They seem to look genuine and happy."

        @options = []
        @options.push("Gladly accept their offer to share their baked cherry pie.")
        @options.push("Politely decline.")
        @options.push("Attack them immediately with all the fury of the elements.")
        @options.push("Simply walk away.")   

        @consequences = []
        @consequences.push("You eat the pie, feel woozy, black out, and wake up naked with all your gold having been stolen.")
        @consequences.push("You walk away.")
        @consequences.push("You attack and defeat the traveller. Costing 1 stamina and losing 1 health but gaining 10 gold from the bloody corpse of the smiling and non deceased friendly traveller.")
        @consequences.push("As you walk away the traveller throws the hot pie at you, dealing 1 damage.")

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
        puts @encounter_intro

        options_index = 0
        for option in @options
            puts "#{options_index + 1}. #{option}"
            options_index += 1
        end

        print "Enter your choice: "
        players_choice = gets.to_i
        
        puts @consequences[players_choice - 1]

    end

end

player = Player.new
player.print_yourself()
encounter = Encounter.new
encounter.start_encounter(player)







