class Owner
  attr_reader :name,
              :occupation,
              :cars
  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
  end

  def buy(info)
    data = info.split(" ")
    hash = {description: data[1..3].to_s, year: data[0]}
    @cars <<  Car.new(hash)
  end

  def vintage_cars
    @cars.find_all do |car|
    car.age >=25
    end
  end

end
