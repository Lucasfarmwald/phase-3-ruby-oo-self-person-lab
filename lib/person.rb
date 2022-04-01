# your code goes here
class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25 
        @happiness = 8 
        @hygiene = 8
    end
    def happiness=(num)
      @happiness = if num > 10
                        10 
                elsif num < 0
                        0
                 else
                    num
        end
        
    end
    def hygiene=(num)
        @hygiene = if num >10
            10
            elsif num < 0
                0
            else
                num
        end
    end
    def happy?
       @happiness > 7 ? true : false
         
    end
    def clean?
        @hygiene > 7 ? true : false
    end
    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3 
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        case topic
        when "politics"
            [self, friend].each {|person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each {|person| person.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"   
        end
    end




    

        
    
end