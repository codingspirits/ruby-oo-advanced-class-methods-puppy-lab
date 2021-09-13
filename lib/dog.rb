class Dog
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        #@@all.push(self)
        save
    end 
    def self.all
        @@all
    end
    def self.clear_all
        @@all.length.times do @@all.shift()
            @@all
        end
    end
    def self.print_all
        @@all.each do |id| 
            puts id.name
        end
    end
    def save 
        @@all.push(self)
    end
end

dog1 = Dog.new("scooby")
dog2 = Dog.new("snoopy")
p Dog.all
Dog.print_all
Dog.clear_all
p Dog.all


