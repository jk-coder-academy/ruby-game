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
        @consequences.push("You politely decline, saying you have an allergy to cherries, thanking the traveller -- you walk away.")
        @consequences.push("You attack and defeat the traveller. Costing 5 stamina and losing 5 health but gaining 10 gold from the bloody corpse of the smiling and non deceased friendly traveller.")
        @consequences.push("As you walk away the traveller throws the hot pie at you, dealing 2 damage.")
        
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
    def perform(player)
        puts "#{player.name} encounters a #{@name}."
        puts @art
        puts @encounter_intro

        options_index = 0
        for option in @options
            puts "#{options_index + 1}. #{option}"
            options_index += 1
        end

        print "Enter your choice: "
        players_choice = gets.to_i - 1 # 0->3
        
        puts @consequences[players_choice]

        # Apply the consequence.
        case players_choice
            when 0
                player.lose_all_gold
            when 1
            when 2
                player.exert_yourself(5)
                player.take_damage(5)
                player.acquire_gold(10)
            when 3
                player.take_damage(2)
        end
    end

end