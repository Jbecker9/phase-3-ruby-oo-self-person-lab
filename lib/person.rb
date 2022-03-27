# your code goes here
require "pry"

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = happiness
    end

    def happiness=(happiness_input)
        if happiness_input > 10
            @happiness = 10
        elsif happiness_input < 0
            @happiness = 0
        else
            @happiness = happiness_input
        end
    end

    def hygiene=(hygiene_input)
        if hygiene_input > 10
            @hygiene = 10
        elsif hygiene_input < 0
            @hygiene = 0
        else
            @hygiene = hygiene_input
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = self.bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(self.hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(self.hygiene-3)
        self.happiness=(self.happiness + 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
       self.happiness += 3
       friend.happiness += 3
       return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end