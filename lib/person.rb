# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25 
        @happiness = 8 
        @hygiene = 8
    end
    def happiness(happiness)
        @happiness = happiness
        happiness.min = 0
        happiness.max = 10
    end

        
    
end