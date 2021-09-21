class Encounter
    # All encounters will have this data.
    attr_reader :art  # Our sweet sweet ascii art.
    attr_reader :name # The name of the encounter, duh!
    attr_reader :options # The options, the player chooses!
    attr_reader :consequence # The consequence of the players choice of options.
    attr_reader :encounter_intro # Intro for the encounter!

    # All encounters have a perform method.
    def perform(player)
        # empty.
    end
end