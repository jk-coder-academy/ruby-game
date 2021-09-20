class Player
    attr_reader :name    # the player chooses their name.
    attr_reader :health  # when this is 0, we lose.
    attr_reader :gold    # this is equivalent to points.
    attr_reader :stamina # this results in not being able to perform actions. 

    def take_damage(damage)
        if(damage <= 0)
            raise "damage should always be a positive number."
        end

        @health -= damage
        if @health < 0 # Player should never be below 0 health.
            @health = 0
        end
    end

    def acquire_gold(gold)
        if(gold <= 0)
            raise "gold should always be a positive number."
        end

        @gold += gold
    end

    def lose_all_gold()
        @gold = 0
    end
    
    def exert_yourself(exertion)
        if exertion <= 0
            raise "exertion should always be a positive number"
        end
        
        @stamina -= exertion
    end



    def initialize()
        print "Enter your player's name: "
        @name = gets.strip # make our player strip. Ooh lala.
        @health = 100
        @gold = 10
        @stamina = 100
    end

    def print_yourself()
        puts "#{@name} has #{@health} health."
        puts "#{@name} has #{@stamina} stamina."
        puts "#{@name} has #{@gold} gold."
    end
end
