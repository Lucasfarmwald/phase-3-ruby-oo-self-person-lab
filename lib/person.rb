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

    

        
    
end