class Franchise

  def initialize
    @restaurants = []
  end

  def add(*restaurants)
    for restaurant in restaurants
        @restaurants << restaurant
    end
  end

  def show
    for restaurant in @restaurants
      puts restaurant.name
    end
  end

end


class Restaurant
    attr_accessor :name
    attr_accessor :rate

    def initialize(name)
        puts "Creating new Restaurant: #{name}"
        @name = name
    end

    # method declaration
    def rating(msg = 'Thank you :)')
        puts "The restaurant #{@name} rating was #{rate}. #{msg}"
    end

    def close_account(data)
        puts "Account closed with the value of #{data[:value]} and rate #{data[:rate]}. Comment: #{data[:comment]}"
    end
end


restaurant_one = Restaurant.new("Butchers")
restaurant_two = Restaurant.new("2Good")

restaurant_one.rate = 10
restaurant_two.rate = 1

restaurant_one.rating
restaurant_two.rating("Bad Food!")

franchise = Franchise.new
franchise.add restaurant_one, restaurant_two

franchise.show

restaurant_one.close_account value: 50, rate: 9, comment: 'It was good!'




