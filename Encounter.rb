class Encounter
    # All encounters will have this data.
    attr_reader :art  # Our sweet sweet ascii art.
    attr_reader :name # The name of the encounter, duh!
    attr_reader :options # The options, the player chooses!
    attr_reader :consequence # The consequence of the players choice of options.
    attr_reader :encounter_intro # Intro for the encounter!

    def print_intro(player_name)
        puts "#{player_name} encounters a #{@name}."
        puts @art
        puts @encounter_intro
    end

    def print_options()
        options_index = 0
        for option in @options
            puts "#{options_index + 1}. #{option}"
            options_index += 1
        end
    end

    def get_player_choice()
        print "Enter your choice: "
        players_choice = gets.to_i - 1 # 0->3
        puts @consequences[players_choice]

        return players_choice
    end

    # All encounters have a perform method.
    def perform(player)
        raise "Every encounter child should have their own 'perform' method."
    end
end